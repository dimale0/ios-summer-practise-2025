//
//  ContentView.swift
//  Project1
//
//  Created by Amina Nutfullina on 16.07.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var userName: String = ""
    @State var userPassword: String = ""
    @State var isNextScreenShown: User?
    @StateObject var myViewModel: MyViewModel = MyViewModel()
    
    
    var body: some View {
        VStack {
            Image(systemName: "person.bubble")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Authorization")
            
            TextField("Enter your name", text: $userName)
                .padding(.top, 60)
                .foregroundStyle(Color.black)
                .padding(6)
                .overlay(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.pink.opacity(0.2))
                        .frame(height: 1)
                }
            SecureField("Enter your password", text: $userPassword)
                .padding(.top, 60)
                .foregroundStyle(Color.purple.opacity(0.3))
                .padding(6)
                .overlay(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.pink.opacity(0.2))
                        .frame(height: 1)
                }
            Button {
                isNextScreenShown = myViewModel.authorize(userName: userName, password: userPassword)
            }  label: {
                Text("Auth")
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .padding(16)
                    .background {
                        RoundedRectangle(cornerRadius: 23)
                            .fill(Color.purple.opacity(0.3))
                    }
            }
            .padding(.top, 20)
            
            
        }
        .padding()
        
        .padding()
//
        .sheet(item: $isNextScreenShown) { user in
            MyNewView(user: user)
        }
    }
        

        struct MyNewView: View {
            @Environment(\.dismiss) var dismiss
            var user: User
            
            @ViewBuilder
            private func getNewView() -> some View {
                Text("Hello, World!")
            }
            
            var body: some View {
                VStack {
                    Text("Hello,\(user.name)")
                    
                    HStack {
                        Image(systemName:"person.crop.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                        VStack(spacing: 20) {
                            Text(user.name)
                            Text("\(user.birthYear)")
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(alignment: .topLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 24, height: 24)
                            .foregroundStyle(Color.black)
                            .padding(.leading, 16)
                    }
                }
                .background {
                    Color.black.opacity(0.2).ignoresSafeArea()
                }
            }
        }
    }

    #Preview {
        ContentView()
    }

