//
//  HomeView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 22/03/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                
                //                LinearGradient(gradient: Gradient(colors: [Color("blue2"), .white, Color("red2")]), startPoint: .top, endPoint: .bottom)
                //                .ignoresSafeArea()
                
                
                ScrollView{
                    
                    VStack{
                        LogoView()
                        
                        VStack(alignment: .leading){
                            
                            Text("Nos coups de coeurs")
                                .font(Font.custom("Futura-Bold", size: 21.0))
                                .foregroundColor(Color("red2"))
                            ScrollView(.horizontal,showsIndicators: false){
                                
                                HStack{
                                    ForEach(coupdecoeurapp) { annonce in
                                        NavigationLink(destination: StructureAnnonce(annonce: annonce)){
                                            
                                            VStack{
                                               
                                                    VStack{
                                                        Image(annonce.photos[0])
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                            .frame(width: 189, height: 119)
                                                            .cornerRadius(10)
                                                            
                                                            
                                                        
                                                        VStack{
                                                            HStack{
                                                                Image("localisation")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.lieu[0])")
                                                                    .font(Font.custom("Futura-Bold", size: 16.0))
                                                                    .foregroundColor(Color("red2"))
                                                                
                                                            }
                                                            HStack{
                                                                Image("calendar-alt 1")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.dateDébut) au \(annonce.dateFin)")
                                                                    .font(Font.custom("Futura-Bold", size: 12.0))
                                                                    .foregroundColor(Color("red2"))
                                                            
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                        
                        VStack(alignment: .leading){
                            
                            Text("Les vacances à la plage")
                                .font(Font.custom("Futura-Bold", size: 21.0))
                                .foregroundColor(Color("blue2"))
                            
                            ScrollView(.horizontal,showsIndicators: false) {
                                
                                HStack{
                                    ForEach(annonceplage) { annonce in
                                        NavigationLink(destination: StructureAnnonce(annonce: annonce)){
                                            VStack{
                                                
                                                    VStack{
                                                        Image(annonce.photos[0])
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                            .frame(width: 189, height: 119)
                                                            .cornerRadius(10)
                                                        
                                                        VStack{
                                                            HStack{
                                                                Image("localblue")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.lieu[0])")
                                                                    .font(Font.custom("Futura-Bold", size: 16.0))
                                                                    .foregroundColor(Color("blue2"))
                                                                
                                                            }
                                                            HStack{
                                                                Image("calendarblue")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.dateDébut) au \(annonce.dateFin)")
                                                                    .font(Font.custom("Futura-Bold", size: 12.0))
                                                                    .foregroundColor(Color("blue2"))
                                                            }
                                                        
                                                        
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                        
                        VStack(alignment: .leading){
                            Text("Les pet' tips de Keep My Pet")
                                .font(Font.custom("Futura-Bold", size: 21.0))
                                .foregroundColor(Color("red2"))
                            
                            ScrollView(.horizontal,showsIndicators: false) {
                                
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 262, height: 111)
                                            .foregroundColor(Color("blue2"))
                                            .cornerRadius(15)
                                        
                                        Text("Comment effectuer une arrivée réussie ?")
                                            .font(Font.custom("Futura-Medium", size: 21))
                                            .font(.title)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: 200)
                                            .foregroundColor(Color.white)
                                        
                                    }
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 262, height: 111)
                                            .foregroundColor(Color("red2"))
                                            .cornerRadius(15)
                                        Text("Découvrez nos associations partenaires")
                                            .font(Font.custom("Futura-Medium", size: 21))
                                            .font(.title)
                                            .frame(width: 200)
                                            .foregroundColor(Color.white)
                                    }
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 262, height: 111)
                                            .foregroundColor(Color.gray)
                                            .cornerRadius(15)
                                        Text("Découvrez nos associations partenaires")
                                            .font(Font.custom("Futura-Medium", size: 21))
                                            .font(.title)
                                            .frame(width: 200)
                                            .foregroundColor(Color.white)
                                    }
                                }
                                
                            }
                        }
                        .padding()
                        VStack(alignment: .leading){
                            Text("Une maison à la campagne")
                                .font(Font.custom("Futura-Bold", size: 21.0))
                                .foregroundColor(Color("blue2"))
                            
                            ScrollView(.horizontal,showsIndicators: false) {
                                HStack{
                                    ForEach(annonceALaCampagne) { annonce in
                                        NavigationLink(destination: StructureAnnonce(annonce: annonce)){
                                            VStack{
                                                
                                                    VStack{
                                                        Image(annonce.photos[0])
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                            .frame(width: 189, height: 119)
                                                            .cornerRadius(10)
                                                        
                                                        VStack{
                                                            HStack{
                                                                Image("localblue")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.lieu[0])")
                                                                    .font(Font.custom("Futura-Bold", size: 16.0))
                                                                    .foregroundColor(Color("blue2"))
                                                                
                                                            }
                                                            HStack{
                                                                Image("calendarblue")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.dateDébut) au \(annonce.dateFin)")
                                                                    .font(Font.custom("Futura-Bold", size: 12.0))
                                                                    .foregroundColor(Color("blue2"))
                                                            }
                                                        
                                                        
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                        VStack(alignment: .leading){
                            Text("Séjour à la Montagne")
                                .font(Font.custom("Futura-Bold", size: 21.0))
                                .foregroundColor(Color("red2"))
                            
                            ScrollView(.horizontal,showsIndicators: false) {
                                HStack{
                                    ForEach(annoncemontagne) { annonce in
                                        NavigationLink(destination: StructureAnnonce(annonce: annonce)){
                                            VStack{
                                               
                                                    VStack{
                                                        Image(annonce.photos[0])
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                            .frame(width: 189, height: 119)
                                                            .cornerRadius(10)
                                                        
                                                        VStack{
                                                            HStack{
                                                                Image("localisation")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.lieu[0])")
                                                                    .font(Font.custom("Futura-Bold", size: 16.0))
                                                                    .foregroundColor(Color("red2"))
                                                                
                                                            }
                                                            HStack{
                                                                Image("calendar-alt 1")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.dateDébut) au \(annonce.dateFin)")
                                                                    .font(Font.custom("Futura-Bold", size: 12.0))
                                                                    .foregroundColor(Color("red2"))
                                                            }
                                                        
                                                        
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                        VStack(alignment: .leading){
                            Text("Cocooning en ville")
                                .font(Font.custom("Futura-Bold", size: 21))
                                .foregroundColor(Color("blue2"))
                            
                            ScrollView(.horizontal,showsIndicators: false) {
                                HStack{
                                    ForEach(annoncesVille) { annonce in
                                        NavigationLink(destination: StructureAnnonce(annonce: annonce)){
                                            VStack{
                                                
                                                    VStack{
                                                        Image(annonce.photos[0])
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                            .frame(width: 189, height: 119)
                                                            .cornerRadius(10)
                                                        
                                                        VStack{
                                                            HStack{
                                                                Image("localblue")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.lieu[0])")
                                                                    .font(Font.custom("Futura-Bold", size: 16.0))
                                                                    .foregroundColor(Color("blue2"))
                                                                
                                                            }
                                                            HStack{
                                                                Image("calendarblue")
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .frame(width: 20, height: 20)
                                                                
                                                                Text("\(annonce.dateDébut) au \(annonce.dateFin)")
                                                                    .font(Font.custom("Futura-Bold", size: 12.0))
                                                                    .foregroundColor(Color("blue2"))
                                                            }
                                                        
                                                        
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct LogoView: View {
    var body: some View {
        HStack(spacing:20){
           
            NavigationLink(destination:ResearchView()) {
            Image("loupe")
                .resizable()
                .frame(width: 30, height: 30)
                
            }
            
            Image("Logofullblue")
                .resizable()
                .frame(width: 231, height:71 )
                .scaledToFit()
            
            NavigationLink(destination:MenuNotificationsView()) {
            
            Image("bell")
                .resizable()
                .frame(width: 30, height: 30)
                
            }
                
        }
    }
}
