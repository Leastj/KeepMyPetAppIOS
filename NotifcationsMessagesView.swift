//
//  ListeNotifcationsView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 29/03/2022.
//

import SwiftUI

struct NotifcationsMessagesView: View {
    var body: some View {
       
        VStack{
            List(notifs) { notif in
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
                    Spacer()
                    
                    
                        if notif.contenuNotif == 1 {
                            Text("a liké votre annonce.")
                                .background(Rectangle().fill(Color("red2")).frame(width: 170, height:30)).padding()
//
                                    
                                .foregroundColor(Color.white)
                                .font(Font.custom("Futura-Bold", size: 10.0))

                        }
                    
                        if notif.contenuNotif == 2 {
                            Text("a partagé votre annonce.")
                                .background(Rectangle().fill(Color("blue2")).frame(width: 170, height:30)).padding()
                                
                                .foregroundColor(Color.white)
                                
                                .font(Font.custom("Futura-Bold", size: 10.0))
                        }
                    
                        if notif.contenuNotif == 3 {
                            Text("a aperçu votre annonce.")
                                .background(Rectangle().fill(Color.green).frame(width: 170, height:30)).padding()
                                .foregroundColor(Color.white)
                                
                                .font(Font.custom("Futura-Bold", size: 10.0))
                        }
                
                }
            }
        }
    }
}
    
    struct ListeNotifcationsView_Previews: PreviewProvider {
        static var previews: some View {
            NotifcationsMessagesView()
        }
    }
    struct Notifications: Identifiable{
        var id=UUID()
        var photo:String
        var name:String
        var contenuNotif:Int
    }
    var notifs = [
        Notifications(photo: "\(tanyaK.photoDeProfil)", name: "\(tanyaK.nomPropriétaire)", contenuNotif: 2),
        Notifications(photo: "\(angelaB.photoDeProfil)", name: "\(angelaB.nomPropriétaire)", contenuNotif: 1),
        Notifications(photo: "\(nathanO.photoDeProfil)", name: "\(nathanO.nomPropriétaire)", contenuNotif: 2),
        Notifications(photo: "\(mattP.photoDeProfil)", name: "\(mattP.nomPropriétaire)", contenuNotif: 2),
        Notifications(photo: "\(kaylaK.photoDeProfil)", name: "\(kaylaK.nomPropriétaire)", contenuNotif: 3),
        Notifications(photo: "\(idellaM.photoDeProfil)", name: "\(idellaM.nomPropriétaire)", contenuNotif: 1),
        Notifications(photo: "\(johannaC.photoDeProfil)", name: "\(johannaC.nomPropriétaire)", contenuNotif: 2),
        Notifications(photo: "\(KarimM.photoDeProfil)", name: "\(KarimM.nomPropriétaire)", contenuNotif: 3),
        Notifications(photo: "\(marcusC.photoDeProfil)", name: "\(marcusC.nomPropriétaire)", contenuNotif: 3),
        Notifications(photo: "\(mattW.photoDeProfil)", name: "\(mattW.nomPropriétaire)", contenuNotif: 2),
        Notifications(photo: "\(patrickP.photoDeProfil)", name: "\(patrickP.nomPropriétaire)", contenuNotif: 1),
        Notifications(photo: "\(valerieE.photoDeProfil)", name: "\(valerieE.nomPropriétaire)", contenuNotif: 2),
        Notifications(photo: "\(megS.photoDeProfil)", name: "\(megS.nomPropriétaire)", contenuNotif: 1),
        Notifications(photo: "\(wabeL.photoDeProfil)", name: "\(wabeL.nomPropriétaire)", contenuNotif: 3),
        Notifications(photo: "\(kevinT.photoDeProfil)", name: "\(kevinT.nomPropriétaire)", contenuNotif: 1),
        Notifications(photo: "\(yamonF.photoDeProfil)", name: "\(yamonF.nomPropriétaire)", contenuNotif: 2),
        Notifications(photo: "\(daveR.photoDeProfil)", name: "\(daveR.nomPropriétaire)", contenuNotif: 3),
        Notifications(photo: "\(jeanfrançoisB.photoDeProfil)", name: "\(jeanfrançoisB.nomPropriétaire)", contenuNotif: 1),
        Notifications(photo: "\(bernadetteS.photoDeProfil)", name: "\(bernadetteS.nomPropriétaire)", contenuNotif: 2)
    ]
