//
//  ReglagesView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 23/03/2022.
//

import SwiftUI

struct ReglagesView: View {
   
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("blue2"))
                        .ignoresSafeArea()
                        .frame(height: 100)
                    Image("logo")
                        .resizable()
                        .frame(width: 231, height:71 )
                        .scaledToFit()
                }
                NavigationLink(destination: ChoixTypeDeProfilView()) {
                      
                    VStack{
                        Image("Switch - VOLONTAIRE")
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight:40)
                        
                        Text("Changer mon type de profil")
                            .foregroundColor(Color("blue2"))
                            .font(Font.custom("Futura-Bold", size: 20))
                        
                    }.padding()
                }
                List(lesReglages) { reglage in
                    
                    NavigationLink(destination:StructureReglagesView(reglage:reglage)){
                        
                        
                        HStack(alignment: .center){
                            Image(systemName: reglage.image)
                                .resizable()
                                .scaledToFit()
                                .frame(maxHeight:30)
                                .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                            
                            Spacer()
                            Text("\(reglage.name)")
                                .font(Font.custom("Futura-medium", size: 16))
                                .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                        }
                    }
                }
                
            }
            .navigationBarHidden(true)
        }
    }
}

struct ReglagesView_Previews: PreviewProvider {
    static var previews: some View {
        ReglagesView()
        
    }
}
struct Reglages: Identifiable {
    var id = UUID()
    var name:String
    var image:String
}
var lesReglages=[
    
    //    Reglages(name: "Changer de type de profil",image:"person.fill"),
    Reglages(name: "Modifier mon profil",image:"person.fill.badge.plus"),
    Reglages(name: "Signaler un utilisateur",image:"person.fill.xmark"),
    Reglages(name: "Réglages des notifications", image: "bell.circle"),
    Reglages(name: "Paiement et versements", image: "dollarsign.circle.fill"),
    Reglages(name: "Deconnexion", image: "ipad.and.arrow.forward")
]
