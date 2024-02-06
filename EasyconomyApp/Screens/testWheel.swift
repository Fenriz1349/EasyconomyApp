//
//  testWheel.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 01/02/2024.
//

import SwiftUI

struct testWheel: View {
    @State private var selectedFriend = false
    @State var compteur = 0
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                ZStack{
                    Image("fond")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200,height: 200)
                    Image("test")
                        .resizable()
                        .frame(width: 100,height: 150)
                }
                }
            }
        }
    }


#Preview {
    testWheel()
}
