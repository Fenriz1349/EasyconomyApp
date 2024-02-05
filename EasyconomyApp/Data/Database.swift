//
//  Database.swift
//  EasyconomyApp
//
//  Created by apprenant51 on 30/01/2024.
//

import Foundation
//liste des adresses
var adresses : [Adress] = [
    Adress(number: "31", street: "rue de la boustiffaille", zipCode: "59000", city: "Lille", country: "France")
]
//variable qui contient les données de l'utilisateur
var user : User =
    User(pseudo: "Fen", score: 666, rank:.student, mail: "test@gmail.fr", password: "1234", adress: adresses[0])

//liste de toutes questions
var questionsQuizz1 : [Question] = [
    Question(topic: "Quelle est la question ?", number: 1, points: 10, proposition1: "test 1",  proposition2: "test 2 vrai", proposition3: "test 3", proposition4: "test 4",validProposition: 2),
    Question(topic: "Encore du Travail ?",number: 2, points: 10, proposition1: "oui mon seigneur", proposition2: "travail", proposition3: "travail", proposition4: "travail", validProposition: 1),
    Question(topic: "Encore du Travail ?",number: 3, points: 10, proposition1: "oui mon seigneur", proposition2: "travail", proposition3: "travail", proposition4: "travail", validProposition: 1),
    Question(topic: "Encore du Travail ?",number: 4, points: 10, proposition1: "oui mon seigneur", proposition2: "travail", proposition3: "travail", proposition4: "travail", validProposition: 1),
    Question(topic: "Encore du Travail ?",number: 5, points: 10, proposition1: "oui mon seigneur", proposition2: "travail", proposition3: "travail", proposition4: "travail", validProposition: 1)
]
//liste des Quizz
var quizzs : [Quizz] = [
    Quizz(name : "Quizz N°1", questions: questionsQuizz1, difficulty: .student)
]
//liste des challenger pour simuler le Leaderboard
var challengers : [Challenger] = [
    Challenger(pseudo: "Guts", avatar :"Guts",score: 666_666, rank: .annuitant, adress: Adress(city: "Eclipse", country: "Midland")),
    Challenger(pseudo: "Casca", avatar :"Casca",score: 1000, rank: .investor, adress: Adress(city: "Eclipse", country: "Midland")),
    Challenger(pseudo: "Kenshiro", avatar :"Kenshiro",score: 900, rank: .CEO,adress: Adress(city: "Tokyo", country: "Japon")),
    Challenger(pseudo: "Batman", avatar :"Batman",score: 850, rank: .investor,adress: Adress(city: "Gotham City", country: "USA")),
    Challenger(pseudo: "Scorpion", avatar :"Scorpion",score: 700, rank: .annuitant, adress: Adress(city: "Nekros", country: "Netherrealm")),
    Challenger(pseudo: "Mileena", avatar :"Mileena",score: 600, rank: .owner, adress: Adress(city: "Makeba", country: "Outworld")),
    Challenger(pseudo: "Shang Tsung", avatar :"ShangTsung",score: 450, rank: .owner, adress: Adress(city: "Nekros", country: "Netherrealm")),
    Challenger(pseudo: "Barbie", avatar :"Barbie",score: 345, rank: .investor, adress: Adress(city: "Miami", country: "USA")),
    Challenger(pseudo: "Sakura", avatar :"Sakura",score: 200, rank: .investor, adress: Adress(city: "Tokyo", country: "Japon")),
    Challenger(pseudo: "Kitana", avatar :"Kitana",score: 145, rank: .owner, adress: Adress(city: "Makeba", country: "Outworld")),
    Challenger(pseudo: "Conan", avatar :"Conan",score: 600, rank: .owner,friend:true, adress: Adress(city: "Cimmerie", country: "Hyboria")),
    Challenger(pseudo: "C 18", avatar :"C18",score: 300, rank: .student,friend:true, adress: Adress(city: "Capital City", country: "The World")),
    Challenger(pseudo: "Claire Redfield", avatar :"ClaireRedfield",score: 200, rank: .investor,friend:true, adress: Adress(city: "Racoon City", country: "USA")),
    Challenger(pseudo: "Bulma", avatar :"Bulma",score: 155, rank: .investor,friend:true, adress: Adress(city: "Capital City", country: "The World")),
    Challenger(pseudo: "Vegeta", avatar :"Vegeta",score: 150, rank: .owner,friend:true,adress: Adress(city: "Vegeta", country: "Vegeta")),
    Challenger(pseudo: "Freezer", avatar :"Freezer",score: 140, rank: .youngInvestor,friend:true, adress: Adress(city: "Freezer 79", country: "Freezer 79")),
    Challenger(pseudo: "Krilin", avatar :"Krilin",score: 100, rank: .youngInvestor,friend:true, adress: Adress(city: "Capital City", country: "The World")),
    Challenger(pseudo: "Bilbon", avatar :"Bilbon",score: 80, rank: .student,friend:true, adress: Adress(city: "la Comté", country: "Terre Du Milieu")),
    Challenger(pseudo: "Cortex", avatar :"Cortex",score: 70, rank: .student,friend:true, adress: Adress(city: "New York", country: "USA")),
    Challenger(pseudo: "DarkSasuke666", avatar :"Sasuke",score: 50, rank: .student,friend:true,adress: Adress(city: "Lens", country: "France")),
    
]

//liste des defintions qui appartiennent à la categorie supply and demande (offre et demande)
let listSupplyAndDemand : [Definition] = [
    Definition(name: "Offre", content: "La quantité de choses que les vendeurs veulent vendre"),
    Definition(name: "Demande", content: "La quantité de choses que les acheteurs veulent acheter."),
    Definition(name: "Inflation", content: "es prix qui montent, ce qui fait que l'argent que tu as achète moins de choses."),
    Definition(name: "Chômage", content: "Ne pas avoir de travail même si on cherche. Le taux de chômage mesure combien de personnes n'ont pas d'emploi parmi celles qui cherchent du travail. Cela peut influencer la vie des gens et l'économie."),
    Definition(name: "PIB (Produit Intérieur Brut)", content: "La valeur de tout ce que nous produisons et vendons dans notre pays."),
    Definition(name: "Monopole", content: "Une seule entreprise qui contrôle tout dans un marché."),
    Definition(name: "Taux d'intérêt", content: "Le coût de l'emprunt d'argent ou le gain d'argent en le prêtant"),
    Definition(name: "Balance commerciale", content: "La différence entre ce que nous vendons à d'autres pays et ce que nous achetons d'eux."),
    Definition(name: "Déflation", content: "Les prix qui baissent, ce qui peut causer des problèmes économiques."),
    Definition(name: "Investissement", content: "Les entreprises qui dépensent de l'argent pour devenir plus grandes."),
    Definition(name: "Elasticité", content: "À quel point les gens réagissent aux changements de prix."),
    Definition(name: "Cycle économique", content: "Des moments où l'économie va bien puis moins bien, puis à nouveau bien."),
    Definition(name: "Budget", content: "Un plan pour savoir combien d'argent on gagne et comment on va le dépenser."),
    Definition(name: "Taux de change", content: "Combien vaut une devise par rapport à une autre. C'est important pour les échanges entre pays et cela influence combien une monnaie peut acheter d'une autre. Les taux de change changent en fonction de l'offre et de la demande."),
    Definition(name: "Commerce international", content: "L'échange de choses entre différents pays")]
//liste des définitions de la categorie invest (investissement)
let listInvest : [Definition] = [
    Definition(name: "Investissement", content: "Utiliser de l'argent pour acheter des choses qui devraient aider à gagner plus d'argent à l'avenir. Cela peut inclure l'achat d'équipements pour les entreprises ou l'investissement dans des actions et des obligations pour les particuliers, dans l'espoir d'obtenir des bénéfices ou de faire croître sa richesse. L'objectif est généralement d'obtenir un retour financier à long terme.", favorite: true),
       Definition(name: "Rendement", content: "Le profit ou le gain que l'on obtient d'un investissement ou d'une activité. C'est la récompense financière que l'on espère recevoir en retour de l'argent investi ou du travail effectué. Un rendement positif signifie généralement que l'investissement a été fructueux, tandis qu'un rendement négatif indique une perte financière. Le rendement peut provenir de différentes sources, telles que des dividendes d'actions, des intérêts sur des obligations, ou des bénéfices d'une entreprise.", favorite: true),
       Definition(name: "Actif", content: "Quelque chose de précieux que l'on possède, généralement avec la possibilité de le convertir en argent. Les actifs peuvent inclure de l'argent, des biens immobiliers, des actions, des obligations, ou d'autres possessions ayant une valeur financière. Ils contribuent à déterminer la richesse d'une personne ou d'une entreprise. Les actifs peuvent également générer des revenus, par exemple, des loyers provenant d'une propriété immobilière ou des dividendes d'actions. Avoir un portefeuille d'actifs peut aider à assurer la stabilité financière et à favoriser la croissance économique."),
       Definition(name: "Passif", content: " se réfère à l'ensemble des dettes et des obligations financières d'une entreprise ou d'une personne. Cela inclut les emprunts, les factures à payer, les salaires d'autres engagements financiers. Ce sont les dépenses qui ne rapportent pas directement d'argent."),
       Definition(name: "Action", content: "Un morceau de propriété dans une entreprise. Si tu as des actions, tu peux gagner de l'argent en recevant une partie des bénéfices (dividendes) ou en vendant tes actions à un prix plus élevé que celui auquel tu les as achetées. Les actions sont échangées sur des marchés, et leur valeur peut changer, affectant ainsi tes gains potentiels. C'est une manière pour les investisseurs de faire partie et de profiter des entreprises.", favorite: true),
       Definition(name: "Bénéfice", content: "L'argent qu'une entreprise ou une personne gagne après avoir payé toutes les dépenses. C'est ce qui reste et peut être utilisé pour faire croître l'entreprise, payer des dividendes, ou atteindre d'autres objectifs financiers. C'est essentiellement le profit positif.", favorite: true),
       Definition(name: "Capital", content: "L'argent ou les choses importantes que tu as pour faire plus d'argent, produire des choses, ou investir. Cela peut être de l'argent en banque, des équipements, ou des propriétés. Le capital aide à développer des activités économiques et à créer de la richesse. C'est comme la base qui permet de faire des affaires et de gagner de l'argent.", favorite: true),
       Definition(name: "Chiffre d'affaires", content: "Le total de l'argent gagné par une entreprise grâce à la vente de biens ou de services. C'est le montant brut avant de soustraire les coûts et les dépenses. Le chiffre d'affaires donne une idée de la taille et de l'activité financière d'une entreprise, mais il ne représente pas nécessairement les profits. C'est plus comme le total des ventes."),
    Definition(name: "Plus-value", content: "Gagner de l'argent en vendant quelque chose plus cher que ce que tu l'as acheté. C'est le profit que tu fais. Cela peut arriver lorsque la valeur de quelque chose augmente ou si tu as fait des améliorations. C'est essentiellement gagner de l'argent grâce à une vente.")
]
//liste des définitions de la categorie global (generale)
let listGlobal : [Definition] = [
    Definition(name: "Citoyenneté Économique", content: "Être membre actif d'une communauté économique en contribuant par ses activités, comme travailler, payer des impôts, et participer à la vie économique d'un pays. Cela implique souvent des droits et des responsabilités liés à l'économie, tels que l'accès à l'emploi et la participation aux échanges commerciaux."),
       Definition(name: "Déficit Budgétaire", content: "Quand un gouvernement dépense plus d'argent qu'il n'en gagne. Cela crée un trou dans le budget, et souvent le gouvernement doit emprunter pour le combler. C'est comme quand tu dépenses plus que ce que tu as."),
       Definition(name: "Economie", content: "Comment les gens gèrent leur argent et leurs ressources pour satisfaire leurs besoins. Cela inclut comment ils produisent, partagent, et utilisent les choses. L'économie regarde aussi comment les entreprises, les gens et les gouvernements prennent des décisions pour utiliser leur argent et leurs ressources de manière intelligente. C'est un peu comme organiser et utiliser nos ressources pour que tout le monde puisse en bénéficier."),
       Definition(name: "Impôts", content: "L'argent que les gens et les entreprises paient au gouvernement pour financer les services publics tels que l'éducation, la santé, et les infrastructures. Les impôts sont obligatoires et sont généralement basés sur le revenu ou la valeur des biens. Ils constituent une source de financement essentielle pour les gouvernements afin de soutenir les besoins collectifs de la société."),
       Definition(name: "Plus-value", content: "Gagner de l'argent en vendant quelque chose plus cher que ce que tu l'as acheté. C'est le profit que tu fais. Cela peut arriver lorsque la valeur de quelque chose augmente ou si tu as fait des améliorations. C'est essentiellement gagner de l'argent grâce à une vente."),
       Definition(name: "PIB (Produit Intérieur Brut)", content: "La somme de tout ce que nous produisons et vendons dans notre pays pendant un certain temps, comme une année. C'est un moyen de mesurer la taille de notre économie et de voir comment elle se porte"),
       Definition(name: "Profit", content: "L'argent que reste après avoir soustrait les coûts et les dépenses des revenus. C'est le gain financier positif résultant d'une activité, souvent associé à la vente de biens ou de services. Le profit est essentiel pour mesurer la réussite financière d'une entreprise ou d'une activité commerciale. Il peut être réinvesti dans l'entreprise, distribué aux actionnaires, ou utilisé à des fins diverses selon les objectifs financiers. En termes simples, le profit est ce qui reste lorsque tous les frais ont été payés.")
]
// liste de toute les définitions trié par ordre alphabetique
let sortedListAllDefinitions = generateListCategory(selectedCategory: .all).sorted{$0.name<$1.name}

//lexique est la liste de toute les categries, qui contiennent une liste les définitions
let lexiques : [Lexique] = [
    Lexique(name: Category.supplyAndDemand.rawValue, definitions: listSupplyAndDemand),
    Lexique(name: Category.invest.rawValue, definitions: listInvest),
    Lexique(name: Category.global.rawValue, definitions: listGlobal)
]
