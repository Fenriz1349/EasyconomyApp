//
//  Definition.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 3 définition
import SwiftUI

struct DefinitionScreen: View {
    var selectedDefinition : Definition
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text(selectedDefinition.name)
                    .font(.title)
                    .foregroundStyle(Color("TitleColor"))
                Text(selectedDefinition.content)
            }
        }.padding()
        .foregroundStyle(Color("FontColor"))
    }
}


#Preview {
    DefinitionScreen(selectedDefinition: listSupplyAndDemand[0])
}
