//
//  Leaderboard.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 6 Leaderbard
import SwiftUI

struct LeaderboardScreen: View {
    @State private var selectedFriend = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack{
                    Text("Leaderbord")
                        .modifier(TitleFontStyle())
                    Picker("friend", selection: $selectedFriend) {
                        Text("Monde").tag(false)
                        Text("Amis").tag(true)
                    }.pickerStyle(.segmented)
                        .padding(.bottom, 30)
                        
                    ScrollView{
                        ForEach(challengers.filter{$0.friend == selectedFriend}.indices, id:\.self) {indice in
                            ExtChallenger(currentChallenger: challengers.filter{$0.friend == selectedFriend}[indice],index: indice)
                        }
                    }
                }
                .toolbar {
                    ExtSettings()
                    }
            }.padding()
                .foregroundStyle(Color("FontColor"))
        }
    }
}
#Preview {
    LeaderboardScreen()
}
