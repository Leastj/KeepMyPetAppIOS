//
//  AproposAnimalModaleView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 30/03/2022.
//

import SwiftUI

struct AproposAnimalModaleView: View {
    @Environment(\.dismiss) var dimiss
    var annonce:Annonce
    var body: some View {
        VStack{
        

            Text(annonce.descriptionAnimal)
                .frame(width: 280)
                .font(Font.custom("Futura-Medium", size: 17))
                .foregroundColor(.white)
    
                
                .padding()
                .background(RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38)))
        
   
            Button {
    dimiss()
            } label: {
                

            Image(systemName:"xmark.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
        }
        }
    }
        
    }

struct AproposAnimalModaleView_Previews: PreviewProvider {
    static var previews: some View {
        AproposAnimalModaleView( annonce: annonces[0])
    }
}
