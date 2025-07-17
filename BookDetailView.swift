//
//  BookDetailView.swift
//  CoffeeShop
//
//  Created by Азалия Хайруллина on 16.07.2025.
//
import SwiftUI

struct BookDetailView: View {
    let book: Book
    @ObservedObject var viewModel: AuthViewModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(book.coverImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .shadow(radius: 5)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(book.title)
                        .font(.title)
                        .bold()
                    
                    Text(book.author)
                        .font(.title2)
                        .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text(book.description)
                        .font(.body)
                        .padding(.top, 5)
                }
                .padding()
                
                Button(action: {
                    viewModel.toggleFavorite(for: book)
                }) {
                    HStack {
                        Image(systemName: book.isFavorite ? "heart.fill" : "heart")
                        Text(book.isFavorite ? "Удалить из избранного" : "Добавить в избранное")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(book.isFavorite ? Color.red.opacity(0.2) : Color.blue.opacity(0.2))
                    .foregroundColor(book.isFavorite ? .red : .blue)
                    .cornerRadius(10)
                }
                .padding()
            }
        }
        .navigationTitle(book.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
