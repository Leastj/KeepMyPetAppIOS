//
//  NotificationsAnnonceView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 29/03/2022.
//

import SwiftUI

struct NotificationsAnnonceView: View {
    var body: some View {
        List(notifMessage) { notif in
            HStack{
                VStack(alignment:.leading){
                    Image("\(notif.photo)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                    Text("\(notif.name)")
                        .font(Font.custom("Futura-Bold", size: 12.0))
                        .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                }
                
                
                if notif.contenuMessage == 1 {
                    Text("Souhaite vous contacter")
                        .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                        .font(Font.custom("Futura-Bold", size: 12.0))
                        .padding(.trailing, -50)
                        
                    
                }
                
                if notif.contenuMessage == 2 {
                    Text("Vous a envoyé un message")
                        .foregroundColor(Color("blue2"))
                        .font(Font.custom("Futura-Bold", size: 12.0))
                        
                        .padding(.trailing, -50)
                }
                
                if notif.contenuMessage == 3 {
                    Text("A aimé votre message")
                        .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                        .font(Font.custom("Futura-Bold", size: 12.0))
                    
                }
                
            }
        }
    }
}

struct NotificationsAnnonceView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsAnnonceView()
    }
}
struct NotificationMessage : Identifiable {
    var id = UUID()
    var photo:String
    var name:String
    var contenuMessage:Int
}
var notifMessage=[
    NotificationMessage(photo: "\(tanyaK.photoDeProfil)", name: "\(tanyaK.nomPropriétaire)", contenuMessage: 1),
    NotificationMessage(photo: "\(angelaB.photoDeProfil)", name: "\(angelaB.nomPropriétaire)", contenuMessage: 3),
    NotificationMessage(photo: "\(nathanO.photoDeProfil)", name: "\(nathanO.nomPropriétaire)", contenuMessage: 2),
    NotificationMessage(photo: "\(kaylaK.photoDeProfil)", name: "\(kaylaK.nomPropriétaire)", contenuMessage: 3),
    NotificationMessage(photo: "\(idellaM.photoDeProfil)", name: "\(idellaM.nomPropriétaire)", contenuMessage: 1),
    NotificationMessage(photo: "\(johannaC.photoDeProfil)", name: "\(johannaC.nomPropriétaire)", contenuMessage: 1),
    NotificationMessage(photo: "\(KarimM.photoDeProfil)", name: "\(KarimM.nomPropriétaire)", contenuMessage: 2),
    NotificationMessage(photo: "\(marcusC.photoDeProfil)", name: "\(marcusC.nomPropriétaire)", contenuMessage: 3),
    NotificationMessage(photo: "\(mattW.photoDeProfil)", name: "\(mattW.nomPropriétaire)", contenuMessage: 3),
    NotificationMessage(photo: "\(patrickP.photoDeProfil)", name: "\(patrickP.nomPropriétaire)", contenuMessage: 2),
    NotificationMessage(photo: "\(valerieE.photoDeProfil)", name: "\(valerieE.nomPropriétaire)", contenuMessage: 2),
    NotificationMessage(photo: "\(megS.photoDeProfil)", name: "\(megS.nomPropriétaire)", contenuMessage: 1),
    NotificationMessage(photo: "\(wabeL.photoDeProfil)", name: "\(wabeL.nomPropriétaire)", contenuMessage: 2),
    NotificationMessage(photo: "\(kevinT.photoDeProfil)", name: "\(kevinT.nomPropriétaire)", contenuMessage: 1),
    NotificationMessage(photo: "\(yamonF.photoDeProfil)", name: "\(yamonF.nomPropriétaire)", contenuMessage: 3),
    NotificationMessage(photo: "\(daveR.photoDeProfil)", name: "\(daveR.nomPropriétaire)", contenuMessage: 2),
    NotificationMessage(photo: "\(jeanfrançoisB.photoDeProfil)", name: "\(jeanfrançoisB.nomPropriétaire)", contenuMessage: 3),
    NotificationMessage(photo: "\(bernadetteS.photoDeProfil)", name: "\(bernadetteS.nomPropriétaire)", contenuMessage: 1)
]
