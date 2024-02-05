//
//  ProfilScreen.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 1 page utilisateur / écran d'atterissage
import SwiftUI

struct ProfilScreen: View {
    var body: some View {
        NavigationView{
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Image(user.avatar)
                    .resizable()
                    .frame(width:200,height: 200)
                Text(user.pseudo)
                    .font(.title)
                    .foregroundStyle(Color("YellowCustom"))
                Text("rang : \(user.rank.rawValue)")
                Text("Points : \(user.score)")
                Text("\(user.adress.city) - \(user.adress.country)")
                
                    NavigationLink(destination: CurrentLesson(), label:{Text("Leçon en cours")})
                }
            }
        }.padding()
            .foregroundStyle(Color("FontColor"))
    }
}

#Preview {
    ProfilScreen()
}
