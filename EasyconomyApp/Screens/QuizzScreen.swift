//
//  Quizz.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
// page 5 Quizz
import SwiftUI

struct QuizzScreen: View {
//    variables pour stocker la reponse selctionner
    @State var questionReturn : [Int] = [0,0,0,0,0]
    @State var nbGoodAnswers : Int = 0
    @State var currentQuestion : Int = 0
    @State var nbPointEarned : Int = 0
    @State private var showingModalQuizz = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            NavigationStack{
                VStack{
                    Text(quizzs[0].name)
                        .modifier(TitleFontStyle())
                    Text("niveaux \(quizzs[0].difficulty.rawValue)")
                        .font(.system(size: 25))
    //formulaire avec la liste des questions
                    Form{
                        ExtQuestion(question: quizzs[0].questions[currentQuestion], QReturn: $questionReturn[currentQuestion])
                            .padding(5)
                            .modifier(BckElement())
                        }
                    HStack{
                        Button(){
                            if questionReturn[currentQuestion] == quizzs[0].questions[currentQuestion].validProposition {
                                nbGoodAnswers+=1
                                nbPointEarned+=quizzs[0].questions[currentQuestion].points
                            }
                            currentQuestion<4 ? currentQuestion+=1 : showingModalQuizz.toggle()
                            
                            }
                        label:{HStack{
                            Text(currentQuestion<4 ? "Suivant   " : "Valider")
                            Image(systemName: currentQuestion<4 ? "chevron.forward" : "")} }
                        .buttonStyle(GrowingButton())
                        .sheet(isPresented: $showingModalQuizz) {
                            QuizzResultScreen(nbGoodAnswers :$nbGoodAnswers, nbPointEarned: $nbPointEarned,currentQuestion : $currentQuestion)
                            }
                    }
                    Text("bonne reponses : \(nbGoodAnswers) / \(currentQuestion)")
                    Text("vous avez marqué \(nbPointEarned)")
                    }
                .toolbar {
                    ExtSettings()
            }
            
            }
        }.padding()
            .modifier(BckElement())
            .font(.system(size: 25))
        .foregroundStyle(Color("FontColor"))
    }
}

#Preview {
    QuizzScreen()
}
