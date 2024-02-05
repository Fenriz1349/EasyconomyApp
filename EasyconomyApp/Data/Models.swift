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
    case student = " 1: étudiant"
    case youngInvestor = "2: Jeune investisseur"
    case investor = "3: Investisseur"
    case owner = "4: Propriétaire"
    case CEO = "5: Chef d'entreprise"
    case annuitant = "6: Rentier"
}

//enum des differents catégories générales dans l'économie ( personnelle, investissement, banque, mondiale)
enum Category : String,CaseIterable,Identifiable{
    var id: String { UUID().uuidString }
    case invest = "Investissement"
    case bank = "banque"
    case global = "mondiale"
    case supplyAndDemand = "Offre et demande"
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

// class d'un joueur
// id : id unique du joueur
// pseudo : pseudo du joueur
// avatar : nom de l'image de l'avatar du joueur dans les assets
// score : score du joueur
// rank : rang du joueur
// friends : liste des amis du joueur
// mail : mail de l'utilisateur
// password : mot de passe de l'utilisateur
// adress : adresse de l'utilisateur
// BDay : date de naissance de l'utilsateur
class User : Identifiable, ObservableObject {
    let id = UUID()
    var pseudo : String
    var avatar : String
    @Published var score : Int
    @Published var rank : Rank
    var mail : String
    var password : String
    var adress : Adress
    
    init(pseudo: String, avatar: String = "Guts", score: Int = 0, rank: Rank, mail: String, password: String, adress: Adress) {
        self.pseudo = pseudo
        self.avatar = avatar
        self.score = score
        self.rank = rank
        self.mail = mail
        self.password = password
        self.adress = adress
    }
}
//struct d'un challenger pour afficher le Leaderboard
// pseudo : pseudo du challenger
// score : score du joueur
// rank : rang du joueur
// friends : Boolean pour indiquer si le challenger est sur la liste d'ami ou pas
class Challenger : Identifiable{
    let id = UUID()
    let pseudo : String
    let avatar : String
    var score : Int
    var rank : Rank
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
    let definitions : [Definition]?
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
    let lessonList : [String]
    let difficulty : Rank
    let quizz : Quizz
}


//fonction pour recuperer la liste des definitions en favoris
func selectedFavorites() ->[Definition]?{
    var listFavorites : [Definition] = []
    
    for lexique in lexiques {
        for definition in lexique.definitions! {
            definition.favorite ? listFavorites.append(definition) : nil
        }
    }
    return listFavorites
}
//fonction pour retourner un dictionnaire de toutes les definitions en exemplaire unique
func generateDictionnaryDefinition ()->[String:String]{
    var dictionnary = [String: String]()
    let listAllDefinition : [Definition] = listGlobal+listInvest+listSupplyAndDemand
    listAllDefinition.forEach { property in
        dictionnary[property.name] = property.content
    }
    return dictionnary
}

//fonction pour generer la liste des definitions de lma categorie selectionné
func generateListCategory(selectedCategory : Category) ->[Definition]{
    switch selectedCategory {
    case .invest : return listInvest
    case .global : return listGlobal
    case .supplyAndDemand : return listSupplyAndDemand
    case .all : return listGlobal+listInvest+listSupplyAndDemand
    default : return []
    }
}
