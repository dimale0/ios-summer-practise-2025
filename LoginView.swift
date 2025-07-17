//
//  LoginView.swift
//  CoffeeShop
//
//  Created by Азалия Хайруллина on 16.07.2025.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.brown, Color.black]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image(systemName: "cup.and.saucer.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
                Text("Добро пожаловать в CoffeeHouse")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                
                TextField("Логин", text: $viewModel.username)
                    .padding()
                    .background(Color.white.opacity(0.2))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .autocapitalization(.none)
                
                SecureField("Пароль", text: $viewModel.password)
                    .padding()
                    .background(Color.white.opacity(0.2))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
                if viewModel.showError {
                    Text("Неверный логин или пароль")
                        .foregroundColor(.red)
                        .bold()
                }
                
                Button("Войти") {
                    viewModel.login()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .foregroundColor(.brown)
                .cornerRadius(12)
                .shadow(radius: 5)
            }
            .padding()
        }
    }
}
