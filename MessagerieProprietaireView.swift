//
//  MessagerieProprietaireView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 27/03/2022.
//

import SwiftUI

struct MessagerieProprietaireView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("red2"))
                        .ignoresSafeArea()
                        .frame(height: 90)
                    Image("logo")
                        .resizable()
                        .frame(width: 231, height:71 )
                        .scaledToFit()
                }
                List(messagerieProprietaire) { messagerie in
                    
                    NavigationLink(destination: DetailMessages(messageProprietaire:messagerie)) {
                        Image("\(messagerie.photoDeProfilMessagerie)")
                            .resizable()
                            .frame(width: 50, height: 50)
                        VStack(alignment:.leading){
                            Text("\(messagerie.userName)")
                                .foregroundColor(Color("blue2"))
                                .fontWeight(.semibold)
                            Text("\(messagerie.contenuMessage)")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}
struct MessagerieProprietaireView_Previews: PreviewProvider {
    static var previews: some View {
        MessagerieProprietaireView()
    }
}


var messagerieProprietaire=[
    Messages(photoDeProfilMessagerie: "tanya-kusova-profil", contenuMessage: "Aurevoir.", userName: "Tanya"),
    Messages(photoDeProfilMessagerie: "angela-bailey-profil", contenuMessage: "Salam khey!", userName: "Angela"),
    Messages(photoDeProfilMessagerie: "nathan-oakley-profil", contenuMessage: "Bien ou bien", userName: "Nathan"),
    Messages(photoDeProfilMessagerie: "matt-pike-profil", contenuMessage: "Oooh tu date le s", userName: "Matt"),
    Messages(photoDeProfilMessagerie: "kayla-koss-profil", contenuMessage: "Salut, ça va ?", userName: "Kayla"),
    Messages(photoDeProfilMessagerie: "jessica-burnett-profil", contenuMessage: "Salam khey!", userName: "Jessica"),
    Messages(photoDeProfilMessagerie: "idella-maeland-profil", contenuMessage: "Bien ou bien", userName: "Idella"),
    Messages(photoDeProfilMessagerie: "johanna-cooper-profil", contenuMessage: "Oooh tu date le s", userName: "Johanna"),
    Messages(photoDeProfilMessagerie: "karim-manjra-profil", contenuMessage: "Salut, ça va ?", userName: "Karim"),
    Messages(photoDeProfilMessagerie: "marcus-cramer-profil", contenuMessage: "Salam khey!", userName: "Marcus"),
    Messages(photoDeProfilMessagerie: "matt-wildbore- profile", contenuMessage: "Bien ou bien", userName: "Matt"),
    Messages(photoDeProfilMessagerie: "patrick-perkins-profil", contenuMessage: "Oooh tu date le s", userName: "Patrick")
]
