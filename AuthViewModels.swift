//
//  AuthViewModel.swift
//  CoffeeShop
//
//  Created by Asanna Xabpynnwna on 16.07.2025.
//

import Foundation

class AuthViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var currentUser: User? = nil
    @Published var showError = false
    @Published var books: [Book] = sampleBooks
    
    func login() {
        if let user = sampleUsers.first(where: { $0.username == username && $0.password == password }) {
            currentUser = user
            showError = false
        } else {
            showError = true
        }
    }
    
    func logout() {
        currentUser = nil
        username = ""
        password = ""
        showError = false
    }
    
    func toggleFavorite(for book: Book) {
        if let index = books.firstIndex(where: { $0.id == book.id }) {
            books[index].isFavorite.toggle()
        }
    }
    
    var favoriteBooks: [Book] {
        books.filter { $0.isFavorite }
    }
}
