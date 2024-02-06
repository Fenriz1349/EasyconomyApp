//
//  Courses.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 4 progression des cours
import SwiftUI

struct LessonScreen: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            NavigationStack{
                VStack{
                    Text("Liste des cours")
                        .font(.system(size: 35))
                        .bold()
                        .foregroundStyle(Color("YellowCustom"))
                    ForEach(listLessonName, id: \.self) { element in
                        ExtLessonNameAndProgress(lessonName: element)
                    }
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
    LessonScreen()
}
