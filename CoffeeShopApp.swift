//
//  CoffeeShopApp.swift
//  CoffeeShop
//
//  Created by Азалия Хайруллина on 15.07.2025.
//

import SwiftUI
@main
struct CoffeeShopApp: App {
    @StateObject var authVM = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authVM) 
        }
    }
}
