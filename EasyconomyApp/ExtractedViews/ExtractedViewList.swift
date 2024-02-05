//
//  ExtractedViewList.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 05/02/2024.
//

import Foundation
import SwiftUI

//extractview d'un element question / reponse
struct ExtQuestion : View {
    let question : Question
    @Binding var QReturn :Int
    var body: some View {
        Picker("\(question.number) : \(question.topic)", selection: $QReturn) {
            Text(question.proposition1).tag(1)
            Text(question.proposition2).tag(2)
            Text(question.proposition3).tag(3)
            Text(question.proposition4).tag(4)
        }.pickerStyle(.inline)
    }
}

//extractView d'une cellule du leaderboard
struct ExtChallenger : View {
    let currentChallenger : Challenger
    var body: some View {
        HStack{
            Image(currentChallenger.avatar)
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color("YellowCustom"), lineWidth: 3))
            VStack(alignment : .leading){
                Text("\(currentChallenger.pseudo) ")
                    .bold()
                Text("\(currentChallenger.score) points \(currentChallenger.rank.rawValue)")
            }
            Spacer()
        }.frame(maxWidth: .infinity)
        .padding(5)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color("TitleColor"), lineWidth: 2))
    }
}

struct ExtChallengerHorizontal : View {
    let currentChallenger : Challenger
    
    var body: some View {
        VStack{
            Image(currentChallenger.avatar)
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color("YellowCustom"), lineWidth: 3))
                Text("\(currentChallenger.pseudo) ")
                    .bold()
                Text("\(currentChallenger.score) points ")
                Text("\(currentChallenger.rank.rawValue)")
        }.frame(maxWidth: .infinity)
        .padding(5)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color("TitleColor"), lineWidth: 2))
    }
}
//extractview pour générer la liste des category si on selectionnne classement par catégorie dans l'écran de Lexique
struct ExtListCategory : View {
    var body: some View {
            ForEach(lexiques) { lexique in
                VStack{
                    Text(lexique.name.description)
                        .font(.title)
                    ForEach(lexique.definitions!) { definition in
                        NavigationLink(
                            destination: DefinitionScreen(selectedDefinition : definition),
                            label: {
                                HStack{
                                    Text("Definition de \(definition.name)")
                                    Image(systemName: "chevron.right")
                                    Spacer()
                                }
                            })
                        
                    }
                }
        }
    }
}
//extractview pour generer la liste des definions placées en favoris
struct ExtListFavorites : View {
    let favorites : [Definition]? = selectedFavorites()
    
    var body: some View {
        VStack{
            ForEach(favorites!) { element in
                NavigationLink(
                    destination: DefinitionScreen(selectedDefinition : element),
                        label: {
                    HStack{
                        Text("Definition de \(element.name)")
                        Image(systemName: "chevron.right")
                        Spacer()
                    }
                })
            }
        }
    }
}

//extractview de toutes les definition par ordre alphabetique
struct ExtListAlphabeticOrder : View {
    var body: some View {
        VStack{
            ForEach(sortedListAllDefinitions) { element in
                NavigationLink(
                    destination: DefinitionScreen(selectedDefinition : element),
                        label: {
                    HStack{
                        Text("Definition de \(element.name)")
                        Image(systemName: "chevron.right")
                        Spacer()
                    }
                })
            }
        }
    }
}

