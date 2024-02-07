//
//  Definition.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 3 définition
import SwiftUI

struct DefinitionScreen: View {
    @ObservedObject var selectedDefinition : Definition
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            NavigationStack{
                VStack{
                    HStack{
                        Text(selectedDefinition.name)
                            .modifier(TitleFontStyle())
                        Spacer()
                        Button {
                            selectedDefinition.favorite.toggle()}
                    label:{
                        Image(systemName: selectedDefinition.favorite ? "star.fill" : "star") }
                    }
                    .font(.system(size: 40))
                    .foregroundStyle(Color("TitleColor"))
                    Text(selectedDefinition.content)
                        .frame()
                        .font(.system(size: 30))
                        .background(Color("ElementBckColor"))
                }
                .toolbar {
                    ExtSettings()
                }
            }
        }.padding()
        .foregroundStyle(Color("FontColor"))
    }
}


#Preview {
    DefinitionScreen(selectedDefinition: listSupplyAndDemand[0])
}
