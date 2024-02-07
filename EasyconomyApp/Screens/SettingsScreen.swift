//
//  Settings.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 7 ecran de paramètres
import SwiftUI

struct Setting : Identifiable{
    let id = UUID()
    let nom: String
}

var settings = [
    Setting(nom: "Compte"),
    Setting(nom: "Sécurité"),
    Setting(nom: "Connexion"),
    Setting(nom: "QR Code")
]

var settings2 = [
    Setting(nom: "Abonnement"),
    Setting(nom: "Preview Fond"),
    Setting(nom: "Preview Avatar"),
    Setting(nom: "Annulation")
]

struct SettingsScreen: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Settings")
                    .modifier(TitleFontStyle())
                Spacer()
                Text("Paramètre du compte")
                List(settings) {
                    element in
                    HStack{
                        Text(element.nom)
                        Spacer()
                        Image(systemName: "chevron.forward")
                    }}
                Text("Paramètre abonnement")
                List(settings2) { element2 in
                    switch element2.nom {
                    case "Preview Fond" :  
                        ZStack {
                            NavigationLink{
                                ExtGalleryBck()
                            } label: {
                                EmptyView()
                            }.opacity(0)
                            HStack{
                                Text(element2.nom)
                                Spacer()
                                Image(systemName: "chevron.forward")
                                }
                            }
                    case "Preview Avatar" :
                        ZStack {
                            NavigationLink{
                                ExtGalleryAvatar()
                            } label: {
                                EmptyView()
                            }.opacity(0)
                            HStack{
                                Text(element2.nom)
                                Spacer()
                                Image(systemName: "chevron.forward")
                            }
                        }
                    default :HStack{
                        Text(element2.nom)
                        Spacer()
                        Image(systemName: "chevron.forward")
                    }
                    }
                }
            }
        }
    }
}
#Preview {
    SettingsScreen()
}
