//
//  ProfilPropriétaire.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 30/03/2022.
//

import Foundation
struct ProfilPropriétaire: Identifiable {
    
    var id = UUID()
    var imageProfil: String
    var level: String
    var prenomNom: String
    var ville: String
    var codepostal: String
    var commentaire: String
    var pepet: String
    var photosPropriétaire: [String]
    var ensavoirplus: String
    var mesanimaux: String
    
    
    
}
let profilNatacha = ProfilPropriétaire (imageProfil: "natachaprofil", level: "Avancée", prenomNom: "Natacha LECHAT", ville: "Font-Romeu", codepostal: "66000", commentaire: "10 commentaires", pepet: "350", photosPropriétaire: ["natachapoule","natachachien","natachavache"], ensavoirplus: "Bonjour, je m'appelle Natacha, j'ai 28 ans et je travaille dans l'événementielle. Ce qui m'amène à laisser parfois mes animaux chez moi car je ne peux les prendre lors de mes déplacements", mesanimaux: "J'ai un super chien qui s'appelle Shangai, des poules et des vaches ! Je les aimes plus que tout, c'est pour quoi je recherche quelqu'un de confiance pour pouvoir les surveiller lorsque je suis en déplacement pro.")
