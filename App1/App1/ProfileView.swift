//
//  ProfileView.swift
//  App1
//
//  Created by krnklvx on 16.07.2025.
//

import SwiftUI

struct ProfileView : View { //экран после входа
    let user : AppUser
    let logOut : () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Добро пожаловать, \(user.name)!")
                .font(.title)
                .padding(.top)
            
            Image(user.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: 5)
            
            Text("ФИО: \(user.fullName)")
                .font(.headline)

            Text("Дата рождения: \(user.birthDate)")
                .font(.subheadline)

            Text("Контакт: \(user.contact)")
                .font(.subheadline)
            
            Text("Возраст: \(user.age) лет")
                .font(.headline)
            
            Text("О себе: \(user.bio)")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Button("Выйти"){
                logOut()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}
