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
User(pseudo: "Julie", avatar : "Guts",score: 700, rank:.student, adress: adresses[0], login: "Julie", password: "1234")

//liste de toutes questions
var questionsQuizz1 : [Question] = [
    Question(topic: "Est-ce que l'externalité environmentale est positive ou négative ?", number: 1, points: 50, proposition1: "oui",  proposition2: "non", proposition3: "oui et non", proposition4: "ça dépend du pays",validProposition: 3),
    Question(topic: "Qu'est-ce qu'un dividende ?",number: 2, points: 60, proposition1: "une part d'entreprise", proposition2: "une partie du bénéfice", proposition3: "une aide sociale", proposition4: "aucune des 3", validProposition: 1),
    Question(topic: "l'achat d'action est-il possible à tout le monde ?",number: 3, points: 70, proposition1: "oui, mais c'est compliqué", proposition2: "non", proposition3: "oui", proposition4: "si Ayoub l'autorise", validProposition: 3),
    Question(topic: "Qu'est-ce qui influence le plus le prix ?",number: 4, points: 80, proposition1: "le gouvernement", proposition2: "les PDG des grosses entreprises", proposition3: "l'offre et la demande", proposition4: "les taxes", validProposition: 3),
    Question(topic: "Quel est le meilleur moyen de devenir riche ?",number: 5, points: 90, proposition1: "avoir un gros salaire", proposition2: "ne jamais depenser d'argent", proposition3: "il faut forcement heriter", proposition4: "utiliser Easyconomy", validProposition: 4)
]
//liste des Quizz
var quizzs : [Quizz] = [
    Quizz(name : "Quizz N°1", questions: questionsQuizz1, difficulty: .student)
]
//liste des challenger pour simuler le Leaderboard
var challengers : [Challenger] = [
    Challenger(pseudo: "Guts", avatar :"Guts",score: 9000, rank: .annuitant, adress: Adress(city: "Eclipse", country: "Midland")),
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
//liste des defintion de la catégories french (fançaise)
let listFrench : [Definition] = [
Definition(name: "Élasticité-prix de l'offre", content: "Mesure de la sensibilité de l'offre d'un bien ou d'un service par rapport à une variation de son prix."),
Definition(name: "Marché financier", content: "Lieu où les actifs financiers tels que les actions, les obligations et les devises sont échangés."),
Definition(name: "Fiscalité", content: "Le système de prélèvement des impôts par un gouvernement pour financer ses dépenses."),
    Definition(name: "Dette souveraine", content: "La dette contractée par un gouvernement national."),
    Definition(name: "Déficit budgétaire", content: "La différence entre les recettes et les dépenses d'un gouvernement sur une période donnée."),
    Definition(name: "Économie émergente", content: "Un pays dont l'économie se développe rapidement et devient de plus en plus importante sur la scène mondiale."),
    Definition(name: "Développement économique", content: "L'amélioration du bien-être matériel d'une société."),
    Definition(name: "Politique fiscale", content: "L'utilisation des impôts et des dépenses gouvernementales pour influencer l'économie."),
    Definition(name: "Monnaie fiduciaire", content: "La monnaie qui n'a pas de valeur intrinsèque et dont la valeur est soutenue par la confiance des utilisateurs."),
    Definition(name: "Revenu national", content: "Le total des revenus gagnés par les résidents d'un pays, y compris les salaires, les intérêts et les bénéfices."),
    Definition(name: "Pouvoir d'achat", content: "La capacité d'achat d'une monnaie."),
    Definition(name: "Taux de chômage", content: "Le pourcentage de la population active sans emploi et à la recherche d'un emploi."),
    Definition(name: "Externalité environnementale", content: "Les effets positifs ou négatifs involontaires d'une activité économique sur l'environnement."),
    Definition(name: "Effet de levier financier", content: "L'utilisation de la dette pour augmenter les rendements attendus d'un investissement."),
    Definition(name: "Commerce international", content: "L'échange de biens et de services entre pays."),
    Definition(name: "Investissement direct étranger (IDE)", content: "L'investissement dans une entreprise ou un projet dans un pays étranger."),
    Definition(name: "Cycle économique", content: "Les fluctuations périodiques de l'activité économique, comprenant des périodes d'expansion et de récession."),
    Definition(name: "Déréglementation", content: "La réduction ou l'élimination des règles et des restrictions gouvernementales sur les activités économiques."),
    Definition(name: "Économie informelle", content: "Les activités économiques qui ne sont pas réglementées par le gouvernement ou qui ne sont pas incluses dans le PIB officiel."),
    Definition(name: "Commerce équitable", content: "Un mouvement visant à garantir des conditions commerciales équitables pour les producteurs des pays en développement."),
    Definition(name: "Infrastructure", content: "Les installations et les structures nécessaires au fonctionnement efficace d'une économie, telles que les routes, les ponts et les réseaux de communication."),
    Definition(name: "Indice des prix à la consommation (IPC)", content: "Une mesure de l'évolution des prix des biens et services achetés par les consommateurs."),
    Definition(name: "Pénurie", content: "Une situation où la demande d'un bien ou d'un service dépasse l'offre disponible."),
    Definition(name: "Revenu disponible", content: "Le revenu total d'un ménage après paiement des impôts et des transferts gouvernementaux."),
    Definition(name: "Crédit bancaire", content: "Les prêts accordés par les banques aux consommateurs et aux entreprises."),
    Definition(name: "Fonction de production", content: "La relation entre les inputs utilisés dans la production et la production résultante de biens et de services."),
    Definition(name: "Cycle de vie économique", content: "Les différentes étapes par lesquelles passe une économie, notamment la croissance, la maturité et le déclin."),
    Definition(name: "Dépenses d'investissement", content: "Les dépenses des entreprises pour l'achat de biens d'équipement et d'autres actifs productifs."),
    Definition(name: "Système de marché libre", content: "Un système économique où les décisions de production, de prix et de distribution sont laissées au libre jeu de l'offre et de la demande."),
    Definition(name: "Revenu national brut (RNB)", content: "La somme de la valeur ajoutée brute par l'économie résidente et du revenu net en provenance de l'étranger.")
]
// liste de toute les définitions trié par ordre alphabetique
let sortedListAllDefinitions = generateListCategory(selectedCategory: .all).sorted{$0.name<$1.name}

//lexique est la liste de toute les categries, qui contiennent une liste les définitions
let lexiques : [Lexique] = [
    Lexique(name: Category.supplyAndDemand.rawValue, definitions: listSupplyAndDemand),
    Lexique(name: Category.invest.rawValue, definitions: listInvest),
    Lexique(name: Category.global.rawValue, definitions: listGlobal),
    Lexique(name: Category.french.rawValue, definitions: listFrench)
]
//liste des écrans pour la leçon en cours
let currentLessonParagraphs : [Lesson] = [
    Lesson(name: "Les Politiques Gouvernementales et Leur Impact Économique" , category: .global, content :"Les politiques gouvernementales, qu'elles touchent les impôts, l'argent ou les règles, sont comme les chefs d'orchestre de l'économie. Les décisions sur les taxes influent sur notre capacité à dépenser, économiser et investir. Les choix en matière d'argent, comme les taux d'intérêt fixés par les banques centrales, affectent l'emprunt, l'investissement et l'inflation. Les règles édictées par les autorités politiques sont également importantes, car des réglementations strictes peuvent freiner l'innovation, tandis que des politiques plus cool peuvent stimuler la croissance économique. En résumé, ce que décide le gouvernement a un impact énorme sur l'économie, que ce soit pour la faire prospérer ou stagner.", difficulty: .youngInvestor, quizz: quizzs[0]),
    Lesson(name: "Commerce International et Relations Diplomatiques", category: .global, content: "Les relations entre pays et les accords commerciaux sont super importants pour lier l'économie et la politique. Les décisions politiques sur le commerce, comme les taxes et les obstacles commerciaux, influent directement sur le mouvement des choses entre les nations. Les accords entre deux pays ou plusieurs ont un impact sur la compétitivité des entreprises à l'échelle mondiale. Quand il y a des tensions politiques, ça peut se transformer en guerre commerciale et ça peut vraiment secouer l'économie mondiale. Donc, les choix politiques dans les relations internationales ont des effets économiques sérieux qui forment notre tableau économique global.", difficulty: .youngInvestor, quizz: quizzs[0]),
    Lesson(name: "Les Défis Économiques comme Catalyseurs Politiques ", category: .global, content: "Les problèmes économiques comme le chômage, l'inégalité et la pauvreté poussent les gouvernements à prendre des décisions importantes. Ils doivent agir pour maintenir la stabilité sociale et garantir le bien-être de la population. Les politiques sociales, la formation professionnelle et les réformes économiques sont des réponses directes à ces défis. En plus, quand il y a des crises économiques, ça peut secouer les structures politiques en place et entraîner des changements dans les priorités et orientations du gouvernement. En résumé, les hauts et bas économiques peuvent vraiment changer le visage politique d'un pays.", difficulty: .youngInvestor, quizz: quizzs[0]),
    Lesson(name: "Conclusion", category: .global, content: "En résumé, l'économie et la politique sont comme des partenaires inséparables. Les choix dans un domaine ont des effets profonds dans l'autre. C'est crucial de comprendre cette relation pour relever les défis d'aujourd'hui et créer des politiques qui boostent le bien-être économique et social. La collaboration entre économie et politique façonne le destin des nations, créant une toile complexe où chaque aspect contribue à la réalité de la société.", difficulty: .youngInvestor, quizz: quizzs[0])
]
//liste des cours à afficher
let listLessonName : [String] = [
    "Politiques gouvernementales","Les Actions en Actions","Commerce International","Les Défis Économiques","La notion de richesse","les crises économique","La monnaie", "L'inflation et la déflation","Le PIB","La création monétaire", "L'obligation des obligation","Banque centrale",
]
//liste des photos de fond
let listBckImage : [String] = [
    "fond1","fond2","fond3","fond4","fond5","fond6"
]

//liste des photos de profil garçon
let listBoyImage : [String] = [
    "boy1","boy2","boy3","boy4","boy5","boy6"
]
//liste des photos de profil garçon
let listGirlImage : [String] = [
    "girl1","girl2","girl3","girl4","girl5","girl6"
]
