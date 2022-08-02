//
//  ProfilVolontaire.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 29/03/2022.
//

import Foundation


struct ProfilVolontaire: Identifiable {
    
    var id = UUID()
    var imageProfil: String
    var level: String
    var prenomNom: String
    var ville: String
    var codepostal: String
    var commentaire: String
    var pepet: String
    var photosVolontaire: [String]
    var ensavoirplus: String
    var monexperience: String
    
    
    
}
let profilChandri = ProfilVolontaire (imageProfil: "chandriANGAARA", level: "Avancée", prenomNom: "Chandri ANGAARA", ville: "Paris, 20ème", codepostal: "75020", commentaire: "10 commentaires", pepet: "350", photosVolontaire:["chandriANGAARA-photo3","chandriANGAARA-photo1","chandriANGAARA-photo2"], ensavoirplus: "Bonjour tout le monde, je suis âgée de 23 ans. Parisiènne depuis maintenant 2 ans pour les études (Master Politique Enfance Jeunesse), j'adore les chiens et les animaux de la ferme! Ma situation ne me permet pas d'avoir mon propre chien si je veux que celui ci soit le plus heureux. Je vous propose donc de venir chez vous pour garder le votre durant un week-end ou une semaine. ", monexperience: "Je suis PetSitter depuis maintenant 4 ans, je garde toute sorte d'animaux à domicile ou chez la personne, je sais également m'occuper de poule et de chevaux (j'ai mon galops 6).")
