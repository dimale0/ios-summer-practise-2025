//
//  MainTabView.swift
//  CoffeeShop
//
//  Created by Азалия Хайруллина on 16.07.2025.
//
import SwiftUI

struct MainTabView: View {
    let user: User
    @ObservedObject var viewModel: AuthViewModel
    
    var body: some View {
        TabView {
            ProfileView(user: user) {
                viewModel.logout()
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Профиль")
            }
            
            LibraryView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Библиотека")
                }
            
            FavoritesView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Избранное")
                }
        }
    }
}
