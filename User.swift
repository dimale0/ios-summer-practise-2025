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

struct Book: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let author: String
    let coverImage: String
    let description: String
    var isFavorite: Bool = false
}

let sampleBooks = [
    Book(title: "1984", author: "Джордж Оруэлл", coverImage: "book1", description: "Антиутопия о тоталитарном режиме."),
    Book(title: "Преступление и наказание", author: "Ф. Достоевский", coverImage: "book2", description: "История моральных терзаний Раскольникова."),
    Book(title: "Молчание ягнят", author: "Т. Харисс", coverImage: "book3", description: "О серийном убийце."),
    Book(title: "50 оттенков серого", author: "Э. Л. Джеймс", coverImage: "book4", description: "о грустном прошлом главное героя и о героине, которая пыталась проникнуть в это прошлое со своей любовь."),
    Book(title: "Гордость и предубеждение", author: "Джейн Остен", coverImage: "book5", description: "О гордой девушке и предубежденном парне.")
]

