//
//  ProfilScreen.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 1 page utilisateur / écran d'atterissage
import SwiftUI

struct ProfilScreen: View {
    @State private var showingModalSocial = false
   
    var body: some View {
        NavigationStack{
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                VStack{
                    Text(user.pseudo)
                        .modifier(TitleFontStyle())
                    Text("rang \(user.rank.rawValue)")
                    Text("Points : \(user.score)")
                    Text("\(user.adress.city), \(user.adress.country)")
                    ZStack{
                        Image("fond1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 200)
                        Image("girl1")
                            .resizable()
                            .frame(width: 100, height: 150)
                    }
                    Spacer()
                }.font(.system(size: 20))
                    .foregroundStyle(Color("FontColor"))
                VStack(spacing: 30){
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
                    Button("Partager avec tes amis !") {
                        showingModalSocial = true
                    }
                    .modifier(OverlayElementProfil())
                    .buttonStyle(GrowingButton())
                    .sheet(isPresented: $showingModalSocial) {
                        SocialLinksScreen()
                        }
                }
            }
            .toolbar {
                ExtSettings()
                }
            }
        }.padding()
    }
}

#Preview {
    ProfilScreen()
}
