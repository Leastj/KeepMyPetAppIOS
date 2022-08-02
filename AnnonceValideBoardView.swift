//
//  AnnonceValideBoardView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 30/03/2022.
//

import SwiftUI

struct AnnonceValideBoardView: View {
    var annonce:Annonce
    var body: some View {
        VStack{
            
            ScrollView{
                
//            LogoView()
            
            ProfilHeaderView(annonce: annonces[0])
                .padding()
                
            HStack{
              Spacer()
                
            Image("carehouse")
                    .resizable()
                    .frame(width: 35, height: 35)
                Spacer()
                Image("Forms")
                        .resizable()
                        .frame(width: 33, height: 35)
                Spacer()
                Image("Répertoire")
                        .resizable()
                        .frame(width: 30, height: 35)
                    
                Spacer()
                
            }
            
            VStack(alignment: .leading){
                
            Text("Comment s'y rendre ?")
                .foregroundColor(Color("blue2"))
                .font(Font.custom("Futura-Medium", size: 24))
                
               
                Image("map")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.bottom, -70)
                .frame(width: 330, height: 200)
                .cornerRadius(20.0)
                
                
                
            }.padding()
            
                
                VStack(alignment: .leading){
                    
                Text("Description de l'animal")
                .foregroundColor(Color("blue2"))
                .font(Font.custom("Futura-Medium", size: 24))
               
            
            HStack(alignment: .bottom){
                
                Text(annonce.descriptionAnimal)
                    .multilineTextAlignment(.leading)
                    .frame(width: 300, height: 108)
                    .font(Font.custom("Futura-Medium", size: 17))
                    .foregroundColor(.white)
                
                Image(systemName:"xmark.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.white)
                
                
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .foregroundColor(Color("blue2")))
                    
                }
                .padding(.top, 10.0)
                
            
                VStack(alignment: .leading){
                
                Text("La Pet' routine")
                .foregroundColor(Color("blue2"))
                .font(Font.custom("Futura-Medium", size: 24))
                
            
            HStack(alignment: .bottom){
                
                Text(annonce.descriptionAnimal)
                    .multilineTextAlignment(.leading)
                    .frame(width: 300, height: 108)
                    .font(Font.custom("Futura-Medium", size: 17))
                    .foregroundColor(.white)
                
                Image(systemName:"xmark.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.white)
                
                
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .foregroundColor(Color("blue2")))
                }
        }
    }
}
}

struct AnnonceValideBoardView_Previews: PreviewProvider {
    static var previews: some View {
        AnnonceValideBoardView(annonce: annonces[0])
    }
}

struct ProfilHeaderView: View {
    var annonce:Annonce
    var body: some View {
        HStack{
            
            Image(annonce.photos[0])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 120, height: 120)
            
            
            
            VStack(alignment: .leading) {
                Text("\(annonce.titreAnnonce)")
                    .font(Font.custom("Futura-Medium", size: 21))
                    .font(.title)
                    .foregroundColor(Color("red2"))
                
                HStack{
                    
                    Image("calendar-alt 1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 16.0, height: 18.0)
                    Text("Du \(annonce.dateDébut) au \(annonce.dateFin)")
                        .font(Font.custom("Futura-Medium", size: 12))
                        .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                    
                }
                HStack{
                    Image("localisation")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 16.0, height: 18.0)
                    Text("\(annonce.lieu[0]), \(annonce.département)")
                        .font(Font.custom("Futura-Medium", size: 12))
                        .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                    
                }
                
                
            }
            
            Spacer()
            
        }
        
        
    }
}
