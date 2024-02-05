//
//  testWheel.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 01/02/2024.
//

import SwiftUI

struct testWheel: View {
    @State private var selectedFriend = false
    @State var compteur = 0
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Leaderbord")
                    .padding(.bottom, 30)
                Picker("friend", selection: $selectedFriend) {
                    Text("Monde").tag(false)
                    Text("Amis").tag(true)
                } .pickerStyle(.segmented)
                    .padding(.bottom, 30)
                ScrollView(.horizontal){
                    HStack {
                        ForEach(challengers.filter{$0.friend == selectedFriend}) {element in
                            ExtChallengerHorizontal(currentChallenger: element)
                        }
                    }
                }
            }
        }.padding()
            .foregroundStyle(Color("FontColor"))
    }
    }

#Preview {
    testWheel()
}
