//
//  ProfilVolontairePublicView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 22/03/2022.
//

import SwiftUI

struct ProfilVolontairePublicView: View {
    var body: some View {
        
        VStack{
            
            LogoView()
            
            
            BartittleView()
            
            
            ProfilView(profil:profilChandri)
            
            ScrollView(.vertical,showsIndicators: false){
            ScrollView(.horizontal,showsIndicators: false){
                
                PhotosVolotaireView()
            }
            
            .padding(.leading, 20.0)
            
            VStack(alignment: .leading){
                
                Text("En savoir plus")
                    .font(Font.custom("Futura-Medium", size: 21))
                    .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                
                EnSavoirPlusView()
                
                Text("Mon expérience")
                    .font(Font.custom("Futura-Medium", size: 21))
                    .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                
                MonExperienceView()
                
            }
        }
    }
        .navigationBarHidden(true)
    }
    struct ProfilVolontairePublicView_Previews: PreviewProvider {
        static var previews: some View {
            ProfilVolontairePublicView()
        }
    }
    
    
    
    
    struct PhotosVolotaireView: View {
        var body: some View {
            HStack{
                
                ForEach(profilChandri.photosVolontaire,id: \.self) { photo in
                    Image (photo)
                    
                        .resizable()
                        .frame(width: 281, height: 190.75)
                        .cornerRadius(9.0)
                }
                
                
                
                
            }
        }
    }
    
}

struct EnSavoirPlusView: View {
    @State var showsheet = false
    var body: some View {
        ZStack{
            
            Button(action:  { showsheet = true
            }, label: {
            
                HStack(alignment: .bottom){
                
                Text(profilChandri.ensavoirplus)
                    .multilineTextAlignment(.leading)
                    .frame(width: 280, height: 108)
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
                            .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38)))
            
            
            })
                   
            .sheet(isPresented: $showsheet) {
                EnSavoirPlusModaleView()
                
            }
        }
        
    }
}
struct MonExperienceView: View {
    @State var showsheet = false
    var body: some View {
        ZStack{
            
            Button(action:  { showsheet = true
            }, label: {
            
                HStack(alignment: .bottom){
                
                    Text(profilChandri.monexperience)
                    .multilineTextAlignment(.leading)
                    .frame(width: 280, height: 108)
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
                            .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38)))
            
            
            })
                   
            .sheet(isPresented: $showsheet) {
                MonExperienceModaleView()
                
            }
        }
        
    }
}


struct BartittleView: View {
    @Environment(\.dismiss) var dimiss
    var body: some View {
        
        HStack{
           
            
            Spacer()
            
            Button {
                dimiss()
            } label: {
            Image(systemName:"arrow.left")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 15, height: 15)
                
            }
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            
            Text("Modifier mon profil")
                .underline()
                .font(Font.custom("Futura-Medium", size: 11))
                .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
            Spacer()
        }
    }
}
