//
//  SocialLinks.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 8 reseaux sociaux
import SwiftUI

struct SocialLinksScreen: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("Partage ton score !")
                .modifier(TitleFontStyle())
            HStack{
                Form{
                    HStack{
                        Image("TwitterLogo")
                            .resizable()
                            .modifier(SocialLogoSize())
                        Link("Partager avec tes amis !",destination : URL(string: "https://twitter.com/Julie7047293366/status/1755214464629035079")!)
                    }

                    HStack{
                        Image("SnapchatLogo")
                            .resizable()
                            .modifier(SocialLogoSize())
                        Button("Partager avec tes amis !"){}}
                    HStack{
                        Image("InstagramLogo")
                            .resizable()
                            .modifier(SocialLogoSize())
                        Button("Partager avec tes amis ! "){}}
                    HStack{
                        Image("DiscordLogo")
                            .resizable()
                            .modifier(SocialLogoSize())
                        Button("Partager avec tes amis !"){}}
                    HStack{
                        Image("FacebookLogo")
                            .resizable()
                            .modifier(SocialLogoSize())
                        Button("Partager avec tes amis !"){}}
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
