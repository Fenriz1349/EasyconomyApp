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
    @State private var searchText = ""
    @State var selectedList = sortedListAllDefinitions
    
    func searchResults() {
        if !searchText.isEmpty {
            lexiqueType = 2
            selectedList = selectedList.filter{ $0.name.lowercased().contains(searchText.lowercased()) }
        }else{
            selectedList = sortedListAllDefinitions
        }
    }
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            NavigationStack{
                VStack{
                    Text("Lexique")
                        .modifier(TitleFontStyle())
                    Picker("friend", selection: $lexiqueType) {
                        Text("catégories").tag(1)
                        Text("A..Z").tag(2)
                        Text("favoris").tag(3)
                    } .pickerStyle(.segmented)
                        .padding(.bottom, 30)
                    ScrollView{
                        switch lexiqueType {
                            case 2 : ExtListAlphabeticOrder(selectedList: selectedList)
                            case 3 : ExtListFavorites()
                            default : ExtListCategory()
                        }
                    }
                }
                .toolbar {
                    ExtSettings()
                    }
            }.padding()
                    .foregroundStyle(Color("FontColor"))
            }.searchable(text: $searchText)
            .onChange(of: searchText){
                searchResults()
            }
        }
    }


#Preview {
    LexiqueScreen()
}
