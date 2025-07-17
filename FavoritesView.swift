//
//  FavoritesView.swift
//  CoffeeShop
//
//  Created by Азалия Хайруллина on 16.07.2025.
//

import SwiftUI

struct FavoritesView: View {
    @ObservedObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                if viewModel.favoriteBooks.isEmpty {
                    VStack {
                        Image(systemName: "heart.slash")
                            .font(.system(size: 50))
                            .foregroundColor(.gray)
                            .padding()
                        Text("Нет избранных книг")
                            .font(.title2)
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 100)
                } else {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                        ForEach(viewModel.favoriteBooks) { book in
                            NavigationLink(destination: BookDetailView(book: book, viewModel: viewModel)) {
                                VStack {
                                    Image(book.coverImage)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 150)
                                        .cornerRadius(8)
                                    
                                    Text(book.title)
                                        .font(.subheadline)
                                        .lineLimit(2)
                                        .multilineTextAlignment(.center)
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Избранное")
        }
    }
}
