//
//  LibraryView.swift
//  CoffeeShop
//
//  Created by Азалия Хайруллина on 16.07.2025.
//

import SwiftUI

struct LibraryView: View {
    @ObservedObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.books) { book in
                NavigationLink(destination: BookDetailView(book: book, viewModel: viewModel)) {
                    BookRow(book: book)
                }
            }
            .navigationTitle("Библиотека")
        }
    }
}

struct BookRow: View {
    let book: Book
    
    var body: some View {
        HStack {
            Image(book.coverImage)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 70)
            
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                Text(book.author)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            if book.isFavorite {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            }
        }
        .padding(.vertical, 8)
    }
}
