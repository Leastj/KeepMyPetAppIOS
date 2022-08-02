//
//  MessagerieView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 24/03/2022.
//

import SwiftUI

struct MessagerieView: View {
    
    var body: some View {
        NavigationView{
            
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("blue2"))
                        .ignoresSafeArea()
                        .frame(height: 90)
                    Image("logo")
                        .resizable()
                        .frame(width: 231, height:71 )
                        .scaledToFit()
                }
                List(messagerie) { message in
                    
                    
                    NavigationLink(destination: DetailMessages(messageProprietaire: message)){
                        
                        Image("\(message.photoDeProfilMessagerie)")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(50)
                        VStack(alignment:.leading){
                            Text("\(message.userName)")
                                .foregroundColor(Color("blue2"))
                                .fontWeight(.semibold)
                            Text("\(message.contenuMessage)")
                                .foregroundColor(Color.gray)
                        }
                    }
                    .padding(.leading)
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
}
struct MessagerieView_Previews: PreviewProvider {
    static var previews: some View {
        MessagerieView()
    }
}
struct Messages : Identifiable {
    var id = UUID()
    var photoDeProfilMessagerie:String
    var contenuMessage:String
    var userName:String
}

var messagerie=[
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
