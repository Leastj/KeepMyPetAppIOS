//
//  ProfilProprietaireView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 26/03/2022.
//

import SwiftUI

struct ProfilProprietaireView: View {
    var body: some View {
       
        
        NavigationView{
          
            
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("red2"))
                        .ignoresSafeArea()
                        .frame(height: 90)
                    LogoView2()
                }
                ProfilView(profil: profilChandri)
                VStack(spacing: 35.0){
                }
                
                BoutonProfilView()
                    .padding()
                
                ScrollView{
                
                //             BOUTON PETPET
                NavigationLink(destination:PepetsView()){
                BoutonPepetView(profil: profilChandri)
                }
                
                    
                    Spacer()
                 Spacer()
                Spacer()
                ScrollView(.horizontal){
                    HStack{
                        ForEach(profilChandri.photosVolontaire,id:\.self) { photo in
                            Image("\(photo)")
                                .resizable()
                                .frame(width: 281, height: 190.75)
                        }
                        
                    }
                    Spacer()
                    Spacer()
                }
              
                    
                    ZStack{
                    Rectangle()
                        .frame(width: 350, height:50)
                        .foregroundColor(Color("red2"))
                        .cornerRadius(20)
                    Text("Créer une annonce")
                        .font(Font.custom("Futura-Bold", size: 22.0))
                        .foregroundColor(.white)
                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}
    
}
struct ProfilProprietaireView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilProprietaireView()
    }
}
struct LogoView2: View {
    var body: some View {
        HStack(spacing:20){
            NavigationLink(destination:ResearchView()) {
                Image("loupeblanc")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("blue2"))
            }
            
            Image("logo")
                .resizable()
                .frame(width: 231, height:71 )
                .scaledToFit()
            
            NavigationLink(destination:MenuNotificationsView()) {
                Image("alerteblanc")
                    .resizable()
                    .frame(width: 20, height: 25)
                    .foregroundColor(Color("blue2"))
            }
        }
    }
}

