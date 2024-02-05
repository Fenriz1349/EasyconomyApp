//
//  QuizzResultScreen.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 01/02/2024.
//

import SwiftUI

struct QuizzResultScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var nbGoodAnswers : Int
    @Binding var nbPointEarned : Int
    var body: some View {
        VStack {
            Text(nbGoodAnswers == 0 ? "t'es mauvais Jack !" : "Vous avez \(nbGoodAnswers)/\(questionsQuizz1.count) bonnes reponses !")
            if quizzs[0].isCompleted{
                Text("Quizz deja Completé, vous ne gagnez pas de points")
            }else{
                Text("vous avez marqué \(quizzs[0].getMaxScore()) points sur \(quizzs[0].getMaxScore())")
            }
            Text("Vous avez \(user.score+quizzs[0].getMaxScore()) points")
                .padding(.bottom,20)
            Button("retour") {
                quizzs[0].isCompleted = true
                user.score+=nbGoodAnswers*10
                nbGoodAnswers = 0
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

#Preview {
    QuizzResultScreen(nbGoodAnswers: .constant(0), nbPointEarned: .constant(0))
}
