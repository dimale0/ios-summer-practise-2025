//
//  User.swift
//  CoffeeShop
//
//  Created by Азалия Хайруллина on 15.07.2025.
//

import Foundation

struct User: Identifiable, Equatable {
    let id = UUID()
    let username: String
    let password: String
    let fullName: String
    let favoriteDrink: String
    let bonusPoints: Int
    let contactInfo: String
    let avatarName: String
}

let sampleUsers = [
    User(username: "CoffeeAndTea", password: "latte123", fullName: "Далиля Королевовна", favoriteDrink: "Капучино", bonusPoints: 200, contactInfo: "korolevadalilya@gmail.com", avatarName: "avatar1"),
    User(username: "espressoKing", password: "blackshot", fullName: "Дмитрий Журавлев", favoriteDrink: "Американо", bonusPoints: 170, contactInfo: "dmitry@mail.ru", avatarName: "avatar2")
]
