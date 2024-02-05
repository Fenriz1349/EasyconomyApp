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
    Setting(nom: "Cadeau"),
    Setting(nom: "Annulation")

]

struct SettingsScreen: View {

    var body: some View {
        VStack{

            Text("Settings")
            Spacer()
            HStack{
                Image(systemName: "magnifyingglass")
                Button("Search"){}}
            Spacer()
            Spacer()
            Text("Paramètre du compte")
            List(settings) {
                element in
                HStack{
                    Text(element.nom)
                    Spacer()
                    Image(systemName: "greaterthan")
                }}
            Text("Paramètre abonnement")
                       List(settings2) { element in
                           HStack{
                               Text(element.nom)
                               Spacer()
                               Image(systemName: "greaterthan")
                           }
                       }
            }
        }}
#Preview {
    SettingsScreen()
}
