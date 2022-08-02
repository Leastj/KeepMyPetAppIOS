//
//  ProfilVolontaireView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 22/03/2022.
//

import SwiftUI

struct ProfilVolontaireView: View {
    var body: some View {
        
        NavigationView{
            
            
    
        
        ZStack{
            
            
            //            HEADER PART
            
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("blue2"))
                        .ignoresSafeArea()
                        .frame(height: 90)
                        
                    LogoView2()
                    
                    }
                //         PROFIL PART
                
                ProfilView(profil: profilChandri)
                
                
                //BOUTON PROFIL
                ScrollView(.vertical,showsIndicators: false){
                    
                    VStack(spacing: 35.0){
                        
                        
                        BoutonProfilView()
                    }
                    
                    
                    
                    
                    
                    //             BOUTON PETPET
                   
                    NavigationLink(destination:PepetsView()){
                    BoutonPepetView(profil: profilChandri)
                    }
                    
                    
                    //                LES RESERVATIONS VALIDÉES
                    
                    
                    VStack(spacing: 25.0){
                        VStack(alignment: .leading){
                            
                            
                            Text("Tes réservations validées")
                                .font(Font.custom("Futura-Medium", size: 21))
                                .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                            
                            ScrollView(.horizontal,showsIndicators: false){
                                
                                HStack{
                                    
                                    ForEach(annoncesReservees) {reservationSelect in
                                        NavigationLink(destination: AnnonceValideBoardView(annonce: reservationSelect))
                                        {ReservationRow(reservationSelect: reservationSelect)}
                                    }
                                    
                                    
                                    
                                }
                                
                            }
                            
                            
                        }
                        .padding(.leading, 20.0)
                    }
                    
                    //                TES COUPS DE COEURS
                    
                    
                    
                    VStack(alignment: .leading){
                        
                        Text("Tes coups de coeurs")
                            .font(Font.custom("Futura-Medium", size: 21))
                            .foregroundColor(Color(red: 0.333, green: 0.733, blue: 0.71))
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            
                            
                            HStack{
                                ForEach(selectionVolontaire) {coupDeCoeurVolontaire in
                                    NavigationLink(destination: StructureAnnonce(annonce: coupDeCoeurVolontaire))
                                    {CoupdecoeurRow(coupDeCoeurVolontaire: coupDeCoeurVolontaire)}
                                }
                            }
                        }
                        
                        
                        
                        
                        //              VU RECEMMENT
                        
                        VStack(alignment: .leading){
                            
                            Text("Vu recemment")
                                .font(Font.custom("Futura-Medium", size: 21))
                                .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                            
                            ScrollView(.horizontal,showsIndicators: false){
                                
                                
                                HStack{
                                    ForEach(historique) {vuRecemment in
                                        NavigationLink(destination: StructureAnnonce(annonce: vuRecemment))
                                        {VurecemmentRow(vuRecemment: vuRecemment)}
                                    }
                                }
                                
                            }
                        }
                        
                    }
                    
                    .padding(.leading, 20.0)
                }
                
            }
        }
        .navigationBarHidden(true)
    }
}
}
struct ProfilVolontaireView_Previews: PreviewProvider {
    static var previews: some View {
        
        ProfilVolontaireView()
    }
}

struct ProfilView: View {
    
    var profil:ProfilVolontaire
    var body: some View {
        HStack{
            VStack{
                Image(profil.imageProfil)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 120, height: 120)
                
                HStack{
                    Image("level")
                        .resizable()
                        .frame(width: 14.0, height: 18.0)
                    
                    Text (profil.level)
                        .font(Font.custom("Futura-medium", size: 12.0))
                        .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                    
                    
                }
                
            }
            
            
            VStack(alignment: .leading, spacing: 9.0){
                
                
                Text(profil.prenomNom)
                    .font(Font.custom("Futura-Bold", size: 21.0))
                    .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                
                
                
                HStack{
                    Image("localisation")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 16.0, height: 18.0)
                    
                    
                    Text("\(profil.ville)\(profil.codepostal)")
                        .font(Font.custom("Futura-MediumItalic", size: 12))
                        .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                    
                }
                HStack{
                    Image("heart.bubble")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 16.0, height: 16.0)
                    
                    Text(profil.commentaire)
                        .font(Font.custom("Futura-MediumItalic", size: 12))
                        .underline()
                        .foregroundColor(Color(red: 0.333, green: 0.733, blue: 0.71))
                }
                HStack{
                    Image("verification.profil")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 15.0, height: 15.0)
                    
                    Text("Identité vérifiée")
                        .font(Font.custom("Futura-MediumItalic", size: 12))
                        .foregroundColor(Color(red: 0.333, green: 0.733, blue: 0.71))
                    
                }
            }
            
        }
    }
}



struct HeaderView: View {
    var body: some View {
        HStack(alignment: .center){
            Spacer()
            Image ("search")
                .resizable()
                .frame(width: 25.0, height: 25.0)
                .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
            Spacer()
            Image ("Logofullblue")
                .resizable()
                .frame(width: 221.92, height: 71)
            
            Spacer()
            Image ("bell")
                .resizable()
                .frame(width: 25.0, height: 25.0)
                .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
            Spacer()
        }
    }
}


struct BoutonProfilView: View {
    
    var body: some View {
        
        NavigationLink(destination: ProfilVolontairePublicView()) {
            
            ZStack{
                
                
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                    .frame(width: 333, height: 25)
                
                
                
                HStack{
                    
                    
                    
                    Text("Afficher le profil")
                        .font(Font.custom("Futura-Medium", size: 13))
                        .foregroundColor(Color.white)
                    
                    
                    
                    Image("arrow-right-white")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 11.0, height: 11.0)
                        
                    
                        
                }
                .padding()
            }
        }
        
    }
    
}




struct BoutonPepetView: View {
    var profil:ProfilVolontaire
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .foregroundColor(Color(red: 0.333, green: 0.733, blue: 0.71))
                .frame(width: 333, height: 112)
            
            HStack(alignment: .bottom){
                VStack{
                    HStack(alignment: .top){
                        
                        ZStack{
                            
                            Text(profil.pepet)
                                .font(Font.custom("Futura-Bold", size: 13))
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 17.0)
                            
                            
                            Image("pepet")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 59.0, height: 64.0)
                        }
                        
                        Text("Convertir les \n petpets")
                            .multilineTextAlignment(.leading)
                            .font(Font.custom("Futura-Bold", size: 23))
                            .foregroundColor(Color.white)
                        
                    }
                    
                }
                Image("arrow-right-white")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 12.0, height: 12.0)
                
            }
            
        }
    }
}

struct ReservationRow: View {
    var reservationSelect: Annonce
    var body: some View {
        HStack {
            
            Image (reservationSelect.photos[0])
                .resizable()
                .frame(width: 131, height: 83)
                .cornerRadius(9.0)
            
            
            
            
            Text(reservationSelect.titreAnnonce)
                .font(Font.custom("Futura-Bold", size: 14))
                .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                .frame(width: 170)
            
            Image("arrow-right 1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.top, 70.0)
                .frame(width: 25.0, height: 25.0)
            
        }
    }
}

struct CoupdecoeurRow: View {
    var coupDeCoeurVolontaire: Annonce
    var body: some View {
        
        
        
        VStack {
            
           
            
            Image (coupDeCoeurVolontaire.photos[0])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 189, height: 119)
                .cornerRadius(10)
                
            
            HStack{
            
                Image("localblue")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                
            Text (coupDeCoeurVolontaire.lieu[0])
                .font(Font.custom("Futura-Bold", size: 16.0))
                .foregroundColor(Color("blue2"))
                
            
            }
            
            HStack{
                
                Image("calendarblue")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                
                Text("\(coupDeCoeurVolontaire.dateDébut) au \(coupDeCoeurVolontaire.dateFin)")
                    .font(Font.custom("Futura-Bold", size: 12.0))
                    .foregroundColor(Color("blue2"))
                
            }
            
            
        }
    }
}

struct VurecemmentRow: View {
    var vuRecemment: Annonce
    var body: some View {
        
        
        
        VStack {
            
            
            Image (vuRecemment.photos[0])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 189, height: 119)
                .cornerRadius(10)
            
            HStack{
                
                Image("locasoftgray")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                
                Text (vuRecemment.lieu[0])
                    .font(Font.custom("Futura-Bold", size: 16.0))
                    .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                
                
            }
            
            HStack{
                Image("calendarsoftgray")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                
                Text("\(vuRecemment.dateDébut) au \(vuRecemment.dateFin)")
                    .font(Font.custom("Futura-Bold", size: 12.0))
                    .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                
            }
            
        }
    }
}


