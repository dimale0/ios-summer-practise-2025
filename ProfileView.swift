//
//  ProfileView.swift
//  CoffeeShop
//
//  Created by Азалия Хайруллина on 16.07.2025.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    let onLogout: () -> Void

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(user.avatarName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .padding(.top)

                Text(user.fullName)
                    .font(.title)
                    .bold()
                    .foregroundColor(.primary)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Любимый напиток: \(user.favoriteDrink)")
                    Text("Бонусные баллы: \(user.bonusPoints)")
                    Text("Контакт: \(user.contactInfo)")
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(12)

                Button("Выйти из аккаунта") {
                    onLogout()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(radius: 5)

                Spacer()
            }
            .padding()
        }
        .background(Color(.systemBackground).ignoresSafeArea())
    }
}
