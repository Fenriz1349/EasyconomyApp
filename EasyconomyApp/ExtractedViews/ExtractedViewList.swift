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
        Text("\(question.number)/5 : \(question.topic)")
        Picker("", selection: $QReturn){
            Text(question.proposition1).tag(1)
            Text(question.proposition2).tag(2)
            Text(question.proposition3).tag(3)
            Text(question.proposition4).tag(4)
        }.pickerStyle(.inline)
            .labelsHidden()
            .background(Color("ElementBckColor"))
            .padding(5)
            .font(.system(size: 20))
    }
}

//extractview d'un paragrahpe d'une leçon
struct ExtLesson : View {
    let lessonParagraphe : Lesson
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text(lessonParagraphe.category.rawValue)
                Text(lessonParagraphe.difficulty.rawValue)
            }
            .font(.system(size: 20))
            .padding(20)
            Text(lessonParagraphe.name)
                .modifier(TitleFontStyle())
            ScrollView{
                Text(lessonParagraphe.content)
                    .padding(15)
            }
            Spacer()
        }
            .background(Color("ElementBckColor"))
            .padding(5)
            .font(.system(size: 25))
    }
}
//extractView d'une cellule du leaderboard
struct ExtChallenger : View {
    let currentChallenger : Challenger
    var index : Int
    var body: some View {
        HStack{
            Text(String( index+1))
                .font(.system(size: 30))
                .bold()
            Image(currentChallenger.avatar)
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color("YellowCustom"), lineWidth: 3))
            HStack{
                VStack(alignment : .leading){
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                        Text("\(currentChallenger.pseudo) ")
                            .bold()
                    })
                    Text("\(currentChallenger.score) points \(currentChallenger.rank.rawValue)")
                }
                Spacer()
            }.modifier(BckElementLeaderboard())
            
        }.frame(maxWidth: .infinity)
        .padding(5)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("TitleColor"), lineWidth: 2))
    }
}

//extractview pour générer la liste des category si on selectionnne classement par catégorie dans l'écran de Lexique
struct ExtListCategory : View {
    @State var showList : [Bool] = [false,false,false,false]

    var body: some View {
        ForEach(Array(lexiques.enumerated()),id:\.offset) { indice,lexique in
                VStack{
                    HStack{
                        Text(lexique.name.description)
                            .modifier(TitleFontStyle())
                            .onTapGesture {
                                showList[indice].toggle()
                            }
                            .padding()
                        Spacer()
                    }.modifier(BckElement())
                        .padding(.bottom, 25)
                   if showList[indice]{
                       ForEach(lexique.definitions) { definition in
                        NavigationLink(
                            destination: DefinitionScreen(selectedDefinition : definition),
                            label: {
                                HStack{
                                    Text("Definition de \(definition.name)")
                                        .padding(3)
                                    Image(systemName: "chevron.right")
                                    Spacer()
                                }
                            })
                        .modifier(BckElement())
                    }}
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
                .modifier(BckElement())
            }
        }
    }
}

//extractview de toutes les definition par ordre alphabetique
struct ExtListAlphabeticOrder : View {
    var selectedList : [Definition]
    var body: some View {
        VStack{
            ForEach(selectedList) { element in
                NavigationLink(
                    destination: DefinitionScreen(selectedDefinition : element),
                        label: {
                    HStack{
                        Text("Definition de \(element.name)")
                        Image(systemName: "chevron.right")
                        Spacer()
                    }
                })
                .modifier(BckElement())
            }
        }
    }
}

//extractview pour afficher la page settings
struct ExtSettings : View {
    var body: some View {
        NavigationLink(
            destination: SettingsScreen(),
            label: {
                Image(systemName: "gearshape")
                    .font(.system(size: 25))
                    .foregroundStyle(Color("FontColor"))
            })
        .modifier(BckElement())
    }
}
 
//extractview poour afficher chaque intitulé des leçons dans une barre de progression
struct ExtLessonNameAndProgress : View {
    var lessonName : String 
    
    let widthGreen  = CGFloat.random(in: 50..<280)
    var isCurrentLesson: Bool {
        return lessonName == "Les politiques gouvernementales"
    }
    var body: some View {
        NavigationLink(destination: CurrentLesson(),
                       label:{
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("YellowCustom"))
                    .frame(width: 300,height: isCurrentLesson ? 60 : 30)
                HStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.green)
                        .frame(width: widthGreen,height: isCurrentLesson ? 60 : 30)
                    Spacer()
                }
                HStack{
                    Text(" \(lessonName)")
                        .font(.system(size: 25))
                    Spacer()
                }
            }}).foregroundStyle(Color("BckgroundColor"))
        }
}
//extractview pour afficher les photos de profil et de fond dans la galery
struct ExtGalleryBck : View {
    @State var compteurGallery : Int = 0
    private var rankName :String{
        getRankNameByNumber(n :compteurGallery)
    }
    var body: some View {
        VStack{
            Text("rang \(rankName)")
                .font(.system(size: 30))
                .bold()
                .foregroundStyle(Color("YellowCustom"))
                .padding(.bottom,10)
            HStack{
                Button(action: {
                    compteurGallery>0 ? compteurGallery-=1 : nil
                }, label: {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 40))
                        .foregroundStyle(Color("FontColor"))
                })
                Image(listBckImage[compteurGallery])
                    .resizable()
                    .frame(width: 500,height: 300)
                    .scaledToFit()
                Button(action: {
                    compteurGallery<listBckImage.count-1 ? compteurGallery+=1 : nil
                }, label: {
                    Image(systemName: "chevron.forward")
                        .font(.system(size: 40))
                        .foregroundStyle(Color("FontColor"))
                })
            }
        }
    }
}

//extractview pour afficher les photos de profil et de fond dans la galery
struct ExtGalleryAvatar : View {
    @State var isBoyOrGirl : Bool = true
    @State var compteurAvatar : Int = 0
    private var rankName :String{
        getRankNameByNumber(n :compteurAvatar)
    }
    private var galery : [String] {
        isBoyOrGirl ? listBoyImage : listGirlImage
    }
    var body: some View {
        VStack{
            Toggle(isBoyOrGirl ? "garçon" : "fille",
                   isOn: $isBoyOrGirl)
                .font(.system(size: 20))
                .fixedSize()
                .padding(.bottom,10)
            Text(isBoyOrGirl ? "garçon rang \(rankName)" : "fille rang \(rankName)")
                .font(.system(size: 30))
                .bold()
                .foregroundStyle(Color("YellowCustom"))
                .padding(.bottom,10)
            HStack{
                Button(action: {
                    compteurAvatar>0 ? compteurAvatar-=1 : nil
                }, label: {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 40))
                        .foregroundStyle(Color("FontColor"))
                })
                Image(galery[compteurAvatar])
                    .resizable()
                    .frame(width: 300,height: 500)
                    .scaledToFit()
                Button(action: {
                    compteurAvatar<galery.count-1 ? compteurAvatar+=1 : nil
                }, label: {
                    Image(systemName: "chevron.forward")
                        .font(.system(size: 40))
                        .foregroundStyle(Color("FontColor"))
                })
            }
        }
    }
}
