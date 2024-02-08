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
    @Binding var currentQuestion : Int
    var body: some View {
        NavigationStack{
            VStack {
                Text(nbGoodAnswers == 0 ? "Dommage, aucunne bonne réponse !" : "Vous avez \(nbGoodAnswers)/\(questionsQuizz1.count) bonnes reponses !")
                    .modifier(TitleFontStyle())
                //            if quizzs[0].isCompleted{
                //                Text("Quizz deja Completé, vous ne gagnez pas de points")
                //            }else{
                Text("Vous avez marqué ")
                Text("\(nbPointEarned) points sur \(quizzs[0].getMaxScore())")
                //            }
                Text("Vous avez \(user.score+nbPointEarned) points")
                    .padding(.bottom,20)
                NavigationLink(
                    destination: SocialLinksScreen(),
                    label: {
                        Text("Partagez mon score")
                            .padding(.horizontal,40)
                            .padding(.vertical,0)
                    }
                ).background(Color("YellowCustom"))
                    .foregroundStyle(Color("BckgroundColor"))
                    .clipShape(Capsule())
                    .padding(.bottom,20)
                Button {
                    quizzs[0].isCompleted = true
                    nbGoodAnswers = 0
                    nbPointEarned = 0
                    currentQuestion = 0
                    user.score = 666
                    presentationMode.wrappedValue.dismiss()
                    }label:{HStack{
                        Image(systemName: "chevron.backward")
                        Text("Retour")
                        .font(.system(size: 25))
                        }
                    }
                .buttonStyle(GrowingButton())
            }.padding(50)
                .foregroundStyle(Color("FontColor"))
                .font(.system(size: 30))
                .modifier(BckElement())
                .modifier(OverlayElement())
        }
    }
}

#Preview {
    QuizzResultScreen(nbGoodAnswers: .constant(0), nbPointEarned: .constant(0),currentQuestion: .constant(0))
}
