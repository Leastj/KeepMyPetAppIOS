//
//  StructureAnnonce.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 23/03/2022.
//

import SwiftUI

struct StructureAnnonce: View {
    var annonce:Annonce
    var body: some View {
        ZStack{
            
            Color(red: 0.898, green: 0.898, blue: 0.898)
                .ignoresSafeArea()
            
            
            ScrollView{
                
                VStack{
//                    LogoView()
                    
//                        .padding()
                    
                    StructureHeaderAnnonceView(annonce: annonce)
                    
                        .padding(.leading, 20.0)
                    
                    
                    Spacer ()
                    
                        .padding(.top, 15.0)
                    
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(annonce.photos, id: \.self) { photo in
                                Image(photo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 189, height: 119)
                                    .cornerRadius(12)
                                
                            }
                        } .padding(.leading, 32.0)
                        
                        
                    }
                    HStack{
                        
                        Image("share")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.leading, 32.0)
                        
                        Spacer()
                        
                        Image("Vector-22")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.leading, -50.0)
                        
                        
                    }  .padding()
                    
                    VStack{
                        
                        HStack{
                            Image("levelrose")
                                .resizable()
                                .frame(width: 17, height: 27)
                            
                            
                            
                            Text("\(annonce.niveau)")
                                .foregroundColor(Color("red2"))
                                .font(Font.custom("Futura-Medium", size: 16))
                            
                        }
                        
                        HStack{
                            Image("users-alt 1")
                                .resizable()
                                .frame(width: 26, height: 26)
                            
                            
                            
                            
                            Text("\(annonce.nombreDePlace) Personnes")
                                .foregroundColor(Color("red2"))
                                .font(Font.custom("Futura-Medium", size: 16))
                            
                        }
                    } . padding(.trailing, 230.0)
                    
                    VStack{
                        
                        Text("Description de l'animal")
                            .foregroundColor(Color("blue2"))
                            .font(Font.custom("Futura-Medium", size: 24))
                            .padding(.trailing, 60.0)
                        
                        
                        
                        AproposAnimalView(annonce: annonce)
                        
                            .padding()
                        
                        Text("Description du logement")
                            .foregroundColor(Color("blue2"))
                            .font(Font.custom("Futura-Medium", size: 24))
                            .padding(.trailing, 60.0)
                        
                        DescriptionDuLogementView(annonce: annonce)
                        
                        
                            .padding()
                        BoutonContactProprioView()
                        
                    } . padding()
                    
                    
                    
                }
                
                
                
                
            }
        }
    }
}

struct AproposAnimalView: View {
    @State var showsheet = false
    var annonce:Annonce
    var body: some View {
        ZStack{
            
            Button(action:  { showsheet = true
            }, label: {
                
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
                
                
                
                
                
            })
            
                .sheet(isPresented: $showsheet) {
                    AproposAnimalModaleView(annonce: annonce)
                }
        }
        
    }
    
}
struct StructureAnnonce_Previews: PreviewProvider {
    static var previews: some View {
        StructureAnnonce(annonce: annonces[0])
    }
}


struct StructureHeaderAnnonceView: View {
    var annonce:Annonce
    var body: some View {
        
        HStack{
            Image(annonce.photoDeProfil)
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


struct DescriptionDuLogementView: View {
    @State var showsheet = false
    var annonce:Annonce
    var body: some View {
        
        Button(action:  { showsheet = true
        }, label: {
            
            HStack(alignment: .bottom){
                
                Text(annonce.descriptionMaison)
                    .multilineTextAlignment(.leading)
                    .frame(width: 300, height: 108)
                    .font(Font.custom("Futura-Medium", size: 17))
                    .foregroundColor(.white)
                
                Image(systemName: "xmark.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.white)
                
                
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .foregroundColor(Color("blue2")))
            
        })
        
            .sheet(isPresented: $showsheet) {
                AproposLogementModaleView(annonce: annonce)
            }
    }
    
}
    
    struct BoutonContactProprioView: View {
       
        var body: some View {
           
            NavigationLink(destination: DetailMessages(messageProprietaire: messagerie[0])){
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                    .frame(width: 250, height: 69)
                
                
                
                HStack{
                    
                    Text("Contacter le propriétaire")
                        .font(Font.custom("Futura-Medium", size: 16))
                        .foregroundColor(Color.white)
                    
                }
                    
                }
            }
        }
    
    }
