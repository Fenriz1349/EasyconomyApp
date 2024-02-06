//
//  SocialLinks.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 8 reseaux sociaux
import SwiftUI

struct SocialLinksScreen: View {
    @State private var showingModal = false

    var body: some View {
        VStack {
            Button("Partager avec tes amis !") {
                showingModal = true
            }.buttonStyle(GrowingButton())
            .sheet(isPresented: $showingModal) {
                ModalView()
            }
        }
    }
}

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("Partage ton score !")
            HStack{
                Form{
                    Link("Partager",destination : URL(string: "https://www.youtube.com/watch?v=gtfUrJjEUv4")!)
                    Image(systemName: "person.fill")
                    Image("SnapchatLogo")
                        .resizable()
                        .modifier(SocialLogoSize())
                    Image("InstagramLogo")
                        .resizable()
                        .modifier(SocialLogoSize())
                    Image("DiscordLogo")
                        .resizable()
                        .modifier(SocialLogoSize())
                    Image("FacebookLogo")
                        .resizable()
                        .modifier(SocialLogoSize())
                    Image("WhatsappLogo")
                        .resizable()
                        .modifier(SocialLogoSize())
                }}
            Button("Fermer") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}



#Preview {
    SocialLinksScreen()
}
