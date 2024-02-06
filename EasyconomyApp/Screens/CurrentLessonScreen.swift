//
//  CurrentLesson.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 01/02/2024.
//

import SwiftUI

struct CurrentLesson: View {
    @State var currentParagraph : Int = 0
    @State var goToQuizz : Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack{
                    ExtLesson(lessonParagraphe: currentLessonParagraphs[currentParagraph])
                    
                    if currentParagraph == currentLessonParagraphs.count-1 {
                        NavigationLink(destination: QuizzScreen(),
                                       isActive: $goToQuizz) {
                            Button( action: {goToQuizz.toggle()},
                                    label:{
                                Text("Faire le Quizz")
                            })
                            .buttonStyle(GrowingButton())
                        }
                    }else {
                            Button(){
                                currentParagraph+=1
                            } label:{HStack{
                                Text("Suivant")
                                    .font(.system(size: 25))
                                Image(systemName: "chevron.forward")
                            } }
                            .buttonStyle(GrowingButton())
                    }
                }
                .toolbar {
                    ExtSettings()
                }
            }
        }
    }
}

#Preview {
    CurrentLesson()
}
