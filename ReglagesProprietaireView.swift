//
//  ReglagesProprietaireView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 29/03/2022.
//

import SwiftUI

struct ReglagesProprietaireView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("red2"))
                        .ignoresSafeArea()
                        .frame(height: 100)
                    Image("logo")
                        .resizable()
                        .frame(width: 231, height:71 )
                        .scaledToFit()
                }
                NavigationLink(destination: ChoixTypeDeProfilView()) {
                    
                    VStack{
                        
                        Image("Switch - PROPRIÉTAIRE")
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight:40)
                        
                       
                        Text("Changer mon type de profil")
                            .foregroundColor(Color("red2"))
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

struct ReglagesProprietaireView_Previews: PreviewProvider {
    static var previews: some View {
        ReglagesProprietaireView()
    }
}
