//
//  PepetsView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 30/03/2022.
//

import SwiftUI

struct PepetsView: View {
    var body: some View {
        VStack{
            ZStack{
                
                HStack{
                    
                    LogoView()
                }
            }
            ZStack{
                Spacer()
                Rectangle()
                    .cornerRadius(20)
                    .frame(width: 250, height:150)
                    .foregroundColor(Color("blue2"))
                VStack{
                    Text("Mes Petpets :")
                        .foregroundColor(.white)
                        .font(Font.custom("Futura-Bold", size: 21.0))
                    
                    ZStack{
                        Image("pepet")
                            .resizable()
                            .frame(width: 79.0, height: 84.0)
                        
                        Text("350")
                            .font(Font.custom("Futura-Bold", size: 20))
                            .foregroundColor(Color.white)
                            .offset(y:-11)
                    }
                }
            }
            VStack{
                Text("Faire un don à une association:")
                    .font(Font.custom("Futura-Bold", size: 21.0))
                    .foregroundColor(Color("red2"))
                List(listeDons){ don in
                    HStack{
                        Image(systemName: "pawprint.fill")
                            .foregroundColor(Color("blue2"))
                        Text("\(don.nombreDePoints) petpets :")
                        Text("\(don.donAFaire)")
                        Spacer()
                        Image(systemName: "cart")
                            .foregroundColor(Color("blue2"))
                        
                    }.padding()
                }
            }
            
            
            Spacer()
        }
    }
}

struct PepetsView_Previews: PreviewProvider {
    static var previews: some View {
        PepetsView()
    }
}
struct FaireUnDon:Identifiable{
    var id=UUID()
    var nombreDePoints:Int
    var donAFaire:String
}
var listeDons=[
    FaireUnDon(nombreDePoints: 10, donAFaire: "1€"),
    FaireUnDon(nombreDePoints: 100, donAFaire: "10€"),
    FaireUnDon(nombreDePoints: 500, donAFaire: "50€"),
    FaireUnDon(nombreDePoints: 1000, donAFaire: "100€"),
    FaireUnDon(nombreDePoints: 5000, donAFaire: "500€"),
    FaireUnDon(nombreDePoints: 10000, donAFaire: "1000€")
]
