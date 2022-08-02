//
//  ChangemantDeProfilView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 26/03/2022.
//

import SwiftUI

struct ChoixTypeDeProfilView: View {
    @EnvironmentObject var datas: KeepMyPetDatas
    
    var body: some View {
        ZStack {
           
            VStack{
                Text("Welcome in")
                    .font(Font.custom("Futura-Bold", size: 20.0))
                    .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                
                Image("Logofullblue")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
               
                VStack{
                    
                    
                    Spacer()
                    Button {
                        datas.loginType = "volontaire"
                    } label: {
                        VStack{
                            
                            ZStack{
                                
                                
                                Rectangle()
                                    .frame(width: 350, height: 120)
                                    .foregroundColor(Color("blue2"))
                                    .cornerRadius(20)
                                
                                Text("VOLONTAIRE")
                                
                                    .font(Font.custom("Futura-Bold", size: 32.0))
                                
                                    .foregroundColor(Color.white)
                            }
                            Text("Vous rendez un service à une personne en gardant son animal à son domicile et vous contribuez aussi au bien-être animal ! Félicitation ! ")
                                .font(Font.custom("Futura-MediumItalic", size: 16.0))
                                .foregroundColor(Color("blue2"))
                                .multilineTextAlignment(.leading)
                                .frame(width: 340.0)
                            
                            
                        }
                    }
                    Spacer()
                    
                    Button {
                        datas.loginType = "proprietaire"
                    } label: {
                        
                        VStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 350, height: 120)
                                    .foregroundColor(Color("red2"))
                                    .cornerRadius(20)
                                
                                Text("PROPRIÉTAIRE")
                                
                                    .font(Font.custom("Futura-Bold", size: 32.0))
                                
                                    .foregroundColor(Color.white)
                            }
                            Text("Un empêchement personnel ou professionel, un départ en vacance (ou pour tout autres raisons) vous contraints à laisser votre animal à votre domicile.")
                                .font(Font.custom("Futura-MediumItalic", size: 16.0))
                                .foregroundColor(Color("red2"))
                                .multilineTextAlignment(.leading)
                                .frame(width: 340.0)
                            
                            
                        }
                    }
                    Spacer()
                }
                Text("tu pourras modifier ton choix plus tard dans tes réglages.")
                    .font(Font.custom("Futura-MediumItalic", size: 16.0))
                    .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                    .multilineTextAlignment(.center)
                
            }
            .navigationBarHidden(true)
        }
        
    }
}

struct ChangemantDeProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ChoixTypeDeProfilView()
            .environmentObject(KeepMyPetDatas())
    }
}
