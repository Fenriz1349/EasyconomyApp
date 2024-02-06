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
                VStack{
                    Text(user.pseudo)
                        .font(.title)
                        .foregroundStyle(Color("YellowCustom"))
                    Text("rang \(user.rank.rawValue)")
                    Text("Points : \(user.score)")
                    Text("\(user.adress.city), \(user.adress.country)")
                    Image(user.avatar)
                        .resizable()
                        .frame(width:200,height: 200)
                        .cornerRadius(30)
                    Spacer()
                }.font(.system(size: 20))
                    .foregroundStyle(Color("FontColor"))
                VStack(spacing: 60){
                    NavigationLink(destination: ExtListFavorites(), label:{
                        Text("Favori")
                        Image(systemName: "chevron.forward")
                    })
                .modifier(OverlayElementProfil())
                    NavigationLink(destination: CurrentLesson(), label:{
                        Text("Reprendre le cours")
                        Image(systemName: "chevron.forward")
                    })
                .modifier(OverlayElementProfil())
                    NavigationLink(destination: QuizzScreen(), label: {
                        Text("Reprendre le quizz")
                        Image(systemName: "chevron.forward")
                    })
                    .modifier(OverlayElementProfil())
                }
            }
            }
        }.padding()
    }
}

#Preview {
    ProfilScreen()
}
