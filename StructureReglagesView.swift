//
//  StructureReglagesView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 29/03/2022.
//

import SwiftUI
struct StructureReglagesView: View {
    var reglage:  Reglages

    
    var body: some View {
        VStack{
            Image("\(reglage.image)")
           
            
            
            
                .navigationBarTitle("\(reglage.name)")
        }
    }
}

struct StructureReglagesView_Previews: PreviewProvider {
    static var previews: some View {
        StructureReglagesView(reglage: Reglages(name: "Modifier mon profil",image:"person.fill.badge.plus"))
    }
}
