//
//  ContentView.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProfilScreen()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profil")
                }
               LexiqueScreen()
                   .tabItem {
                       Image(systemName: "books.vertical.fill")
                       Text("Lexique")
                   }
                LessonScreen()
                   .tabItem {
                       Image(systemName: "pencil")
                       Text("Cours")
                   }
               LeaderboardScreen()
                   .tabItem {
                       Image(systemName: "trophy.fill")
                       Text("Leaderboard")
                   }
               }.foregroundStyle(Color("FontColor"))
    }
}

#Preview {
    ContentView()
}
