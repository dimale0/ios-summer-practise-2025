//
//  MyViewModel.swift
//  App1
//
//  Created by krnklvx on 15.07.2025.
//

import Foundation

class MyViewModel : ObservableObject{
    static let users: [AppUser] = [
        AppUser(name: "Mike",
                password: "lomerass",
                age: 18,
                bio: "Я крутой!",
                imageName: "mike",
                fullName: "Майкл Джонсон",
                birthDate: "01.01.2006",
                contact: "+1234567890"),
        AppUser(name: "Rail",
                password: "qwerty1",
                age: 23,
                bio: "Я умный",
                imageName: "rail",
                fullName: "Раиль Габдуллин",
                birthDate: "15.08.2001",
                contact: "+79001234567"
               )
    ]
    
    static func authorize(userName : String, password : String) -> AppUser?{
        return users.first(where: { $0.name == userName  && $0.password == password})
    }
}
