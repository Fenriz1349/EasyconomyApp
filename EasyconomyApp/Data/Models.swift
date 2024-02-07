//
//  Models.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//
import SwiftUI
import Foundation
// enum des differents rangs de joueur
enum Rank : String,CaseIterable,Identifiable{
    var id: String { UUID().uuidString }
    case student = " 1 : étudiant"
    case youngInvestor = "2 : Jeune investisseur"
    case investor = "3 : Investisseur"
    case owner = "4 : Propriétaire"
    case CEO = "5 : Chef d'entreprise"
    case annuitant = "6 : Rentier"
}

//enum des differents catégories générales dans l'économie ( personnelle, investissement, banque, mondiale)
enum Category : String,CaseIterable,Identifiable{
    var id: String { UUID().uuidString }
    case invest = "Investissement"
    case bank = "Banque"
    case global = "Mondiale"
    case supplyAndDemand = "Offre et demande"
    case french = "France"
    case all = "Toutes"
}
//struct de l'adresse d'un utilisateur, pour pouvoir recuperer le pays ou la ville facilement
// number : numero dans la rue
// street : intitilé de la rue complete
// zipCode : code postal de la ville
// city : nom de la ville
// country : nom du pays
struct Adress : Identifiable {
    let id = UUID()
    var number : String = ""
    var street : String = ""
    var zipCode : String = ""
    var city : String
    var country : String
}

//struct d'un challenger pour afficher le Leaderboard
// pseudo : pseudo du challenger
// score : score du joueur
// rank : rang du joueur
// friends : Boolean pour indiquer si le challenger est sur la liste d'ami ou pas
class Challenger : Identifiable, ObservableObject{
    let id = UUID()
    let pseudo : String
    let avatar : String
    @Published var score : Int
    @Published var rank : Rank
    var friend : Bool
    var adress : Adress
    
    init(pseudo: String, avatar: String, score: Int, rank: Rank, friend: Bool = false, adress : Adress) {
        self.pseudo = pseudo
        self.avatar = avatar
        self.score = score
        self.rank = rank
        self.friend = friend
        self.adress = adress
    }
}
// class d'un joueur qui herite de la class challenger
// friends : liste des amis du joueur
// mail : mail de l'utilisateur
// password : mot de passe de l'utilisateur

class User : Challenger {
    var login : String
    var password : String
    var friendsList : [String]
    
    init(pseudo: String, avatar: String, score: Int, rank: Rank, friend: Bool = false, adress : Adress,login: String, password: String, friendsList: [String] = []) {
        self.login = login
        self.password = password
        self.friendsList = friendsList
        super.init(pseudo: pseudo, avatar: avatar, score: score, rank: rank, adress: adress)
    }
}

// struct d'un Quizz
// id : identrifiant unique d'un quizz
// name : le nom du Quizz
// questions : listes des id des questions du quizz
// difficulty : difficulté du quizz
// isCompleted : indique si on a bien repondu (true) ou pas (false)
// getMaxScore : fonction qui renvoie le total des points donnée par le Quizz, addition du nombre de points par question plus une bonus suivant la difficulté
class Quizz : Identifiable, ObservableObject{
    let id = UUID()
    let name : String
    var questions : [Question]
    @Published var isCompleted : Bool
    let difficulty : Rank
    
    init(name: String, questions: [Question], isCompleted: Bool = false, difficulty: Rank) {
        self.name = name
        self.questions = questions
        self.isCompleted = isCompleted
        self.difficulty = difficulty
        }
    func getMaxScore() -> Int{
        var compteur = 0
        questions.forEach{compteur += $0.points}
        return compteur
        }
}

// class d'une question
// id : indentifiant unique d'une question
// topic : intitulé de la question
// number : numero de la question
// points : nombre de point gagné si on reponds bien
// proposition1,2,3,4 : intitulé des propostions
// validProposition : numero de la bonne reponse
class Question : Identifiable{
    let id = UUID()
    let topic : String
    let number : Int
    let points : Int

    let proposition1 : String
    let proposition2 : String
    let proposition3 : String
    let proposition4 : String
    let validProposition : Int
    
    init(topic: String, number: Int, points: Int, proposition1: String, proposition2: String, proposition3: String, proposition4: String, validProposition: Int) {
        self.topic = topic
        self.number = number
        self.points = points
        self.proposition1 = proposition1
        self.proposition2 = proposition2
        self.proposition3 = proposition3
        self.proposition4 = proposition4
        self.validProposition = validProposition
    }
    
    
}

//class d'une definition
// id : identifiant unique de la definition
// name : nom de la definition
// content : contenu de la definition
// fav : booleen qui permet de mettre une definition en favoris
class Definition : Identifiable, ObservableObject {
    let id = UUID()
    let name : String
    let content : String
    @Published var favorite : Bool
    
    init(name: String, content: String, favorite: Bool = false) {
        self.name = name
        self.content = content
        self.favorite = favorite
    }
}
//struc du lexique pour afficher les differents catégories
// id : l'id unique de la category
// category : nom de la catégorie, de type Category
// definitions : liste des definitions de cette catégory
struct Lexique : Identifiable {
    let id = UUID()
    let name : String
    let definitions : [Definition]
}

//struct d'un cours
// id : identifiant unique du cours
// name : intitulié du cours
// category : categorie generale à laquelle appartient le cours (économie personnel, économie mondiale)
// difficulty : niveau de difficulté du cours, lié au Rank
// quizz : quizz associé au cours
struct Lesson : Identifiable {
    let id = UUID()
    let name : String
    let category : Category
    let content : String
    let difficulty : Rank
    let quizz : Quizz
}


//fonction pour recuperer la liste des definitions en favoris
func selectedFavorites() ->[Definition]?{
    var listFavorites : [Definition] = []
    for lexique in lexiques {
        for definition in lexique.definitions {
            definition.favorite ? listFavorites.append(definition) : nil
        }
    }
    return listFavorites
}

//fonction pour generer la liste des definitions de lma categorie selectionné
func generateListCategory(selectedCategory : Category) ->[Definition]{
    switch selectedCategory {
    case .invest : return listInvest
    case .global : return listGlobal
    case .supplyAndDemand : return listSupplyAndDemand
    case .french : return listFrench
    case .all : return listGlobal+listInvest+listSupplyAndDemand+listFrench
    default : return []
    }
}

// struct pour animer le bouton de validation
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color("YellowCustom"))
            .foregroundStyle(Color("BckgroundColor"))
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.5 : 1)
            .animation(.easeOut(duration: 0.3), value: configuration.isPressed)
    }
}
//struct pour ajouter un modifier qui rajoute un overlay gris autour d'un element
struct OverlayElement: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color("TitleColor"), lineWidth: 2))
            .foregroundStyle(.black)
            
    }
}
//struct pour ajouter un modifier qui rajoute un overlay gris autour d'un element et ajouter un fond jaune pour l'écran profil
struct OverlayElementProfil: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width:250,height: 18)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color("TitleColor"), lineWidth: 4))
            .foregroundStyle(.black)
            .font(.system(size: 20))
            .background(Color("YellowCustom"))
            .cornerRadius(25)
            
    }
}
//struc pour ajouter un fond gris rectangulaire avec des bords arrondis
struct BckElement: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color("ElementBckColor"))
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}
//struc pour ajouter un fond gris rectangulaire pour le leaderboard
struct BckElementLeaderboard: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color("ElementBckColor"))
           .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

//struc pour ajouter un fond gris rectangulaire avec des bords arrondis
struct SocialLogoSize: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 40, height: 40)
    }
}

//struc pour uniformiser le style des titres
struct TitleFontStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 35))
            .foregroundStyle(Color("YellowCustom"))
            .bold()
            .padding(.bottom,5)
    }
}
//fonction pour renvoyer le nom du rank en fonction d'un index de 0 à 5
func getRankNameByNumber (n :Int)-> String {
    switch n {
    case 1 : return Rank.youngInvestor.rawValue
    case 2 : return Rank.investor.rawValue
    case 3 : return Rank.owner.rawValue
    case 4 : return Rank.CEO.rawValue
    case 5 : return Rank.annuitant.rawValue
    default : return Rank.student.rawValue
    }
}
