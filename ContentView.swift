//
//  ContentView.swift
//  CoffeeShop
//
//  Created by Азалия Хайруллина on 15.07.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = AuthViewModel()

    var body: some View {
        if let user = viewModel.currentUser {
            ProfileView(user: user) {
                viewModel.logout()
            }
        } else {
            LoginView(viewModel: viewModel)
        }
    }
}
