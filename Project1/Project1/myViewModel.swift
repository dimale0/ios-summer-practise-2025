//
//  myViewModel.swift
//  Project1
//
//  Created by Amina Nutfullina on 16.07.2025.
//

import SwiftUI

struct User: Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var password: String
    var birthYear: Int
    
}

class MyViewModel: ObservableObject {

    @AppStorage("userName") var userName: String = "Amina"
    @AppStorage("password") var password: String = "927"
    var users: [User] = [User(name: "Amina", password: "927", birthYear: 2006), .init(name: "Amira", password: "927", birthYear: 2005),.init(name: "Alina", password: "792", birthYear: 2004)]


    func authorize(userName: String, password: String) -> User? {
        
        for user in users {
            if user.name == userName && user.password == password {
                return user
//            }else{
//                print("Ошибка авторизации")
                
            }
        }
        return nil
    }
}


