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
            VStack{
                Text(quizzs[0].name)
                    .bold()
                Text("niveaux \(quizzs[0].difficulty.rawValue)")
                Text("question numero \(currentQuestion+1) sur 5")
                Text("bonne reponses : \(nbGoodAnswers) / \(currentQuestion)")
                Text("vous avez marqué \(nbPointEarned)")
//formulaire avec la liste des questions
                Form{
                    ExtQuestion(question: quizzs[0].questions[currentQuestion], QReturn: $questionReturn[currentQuestion])
                    Button(currentQuestion<4 ? "Suivant" : "Valider"){
                        if questionReturn[currentQuestion] == quizzs[0].questions[currentQuestion].validProposition {
                            nbGoodAnswers+=1
                            nbPointEarned+=quizzs[0].questions[currentQuestion].points
                        }
                        currentQuestion<5 ? currentQuestion+=1 : nil
                        if  currentQuestion == 4 {
                            showingModalQuizz.toggle()
                        }
                        }
                        .sheet(isPresented: $showingModalQuizz) {
                            QuizzResultScreen(nbGoodAnswers :$nbGoodAnswers, nbPointEarned: $nbPointEarned)
                        }
                    }
                }
        }.padding()
        .foregroundStyle(Color("FontColor"))
    }
}

#Preview {
    QuizzScreen()
}
