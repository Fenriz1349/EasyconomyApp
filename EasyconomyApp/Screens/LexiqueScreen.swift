//
//  Lexique.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
//page 2 Lexique
import SwiftUI

struct LexiqueScreen: View {
    @State var lexiqueType : Int = 1
    @State var selectedCategory : String = Category.bank.rawValue
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            NavigationStack{
                VStack{
                    Text("Lexique")
                        .font(.title)
                        .foregroundStyle(Color("TitleColor"))
                        .padding(.bottom, 30)
                    Picker("friend", selection: $lexiqueType) {
                        Text("catégories").tag(1)
                        Text("A..Z").tag(2)
                        Text("favoris").tag(3)
                    } .pickerStyle(.segmented)
                    ScrollView{
                        switch lexiqueType {
                            case 1 : ExtListCategory()
                            case 2 : ExtListAlphabeticOrder()
                            case 3 : ExtListFavorites()
                            default : Text("erreur")
                        }
                    }
                    
                }
            }.padding()
                    .foregroundStyle(Color("FontColor"))
            }
        }
    }


#Preview {
    LexiqueScreen()
}
