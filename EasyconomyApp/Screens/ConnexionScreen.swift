//
//  ConnexionScreen.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 06/02/2024.
//

import SwiftUI

struct ConnexionScreen: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack{
                    Image("Loading")
                        .cornerRadius(10)
                        .modifier(OverlayElement())
                    Text("Login")
                        .modifier(TitleFontStyle())
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color("FontColor"))
                        .foregroundStyle(Color("BckgroundColor"))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color("FontColor"))
                        .foregroundStyle(Color("BckgroundColor"))
                        .frame(width: 300, height: 50)
                        .background(Color("TitleColor").opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))

                    Button("Login") {
                        autheticateUser(username: username, password: password)
                    } 
                        .frame(width: 300, height: 30)
                        .padding()
                        .background(Color("YellowCustom"))
                        .foregroundStyle(Color("BckgroundColor"))
                        .cornerRadius(10)
                }
            }
            .navigationBarHidden(true)
        }    }
    func autheticateUser(username: String, password: String) {
        if username.lowercased() == "a" {
            wrongUsername = 0
            if password.lowercased() == "a" {
                wrongPassword = 0
                presentationMode.wrappedValue.dismiss()
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

#Preview {
    ConnexionScreen()
}
