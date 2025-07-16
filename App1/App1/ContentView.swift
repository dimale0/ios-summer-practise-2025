//
//  ContentView.swift
//  App1
//
//  Created by krnklvx on 15.07.2025.
//

import SwiftUI
struct AppUser : Identifiable, Equatable{
    let id = UUID()
    let name :  String
    let password : String
    let age : Int
    let bio : String
    let imageName: String
    let fullName: String
    let birthDate: String
    let contact: String

}


struct ContentView : View {
    @State private var userName : String = ""
    @State private var userPassword : String = ""
    @State private var loginFailed = false
    @State private var isLogined : AppUser? = nil
    @StateObject private var viewModel = MyViewModel()
    
    var body: some View{
        VStack(spacing:20){
            Text("Авторизация")
                .font(.largeTitle)
                .bold()
            
            TextField("Введите логин", text: $userName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            SecureField("Введите пароль", text: $userPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Button("Войти") {
                if let user = MyViewModel.authorize(userName: userName, password: userPassword) {
                    isLogined = user
                    loginFailed = false
                } else {
                    loginFailed = true
        }
    }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            if loginFailed {
                Text("Неверный логин или пароль")
                    .foregroundColor(.red)
                    .padding(.top)
            }
        }
        .padding()
        .fullScreenCover(item: $isLogined) {(user: AppUser) in //Переход на другой экран
            ProfileView(user: user) {
                isLogined = nil
                userName = ""
                userPassword = ""
            }
        }
    }
}



