//
//  ProfilVolontaireView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 22/03/2022.
//

import SwiftUI

struct ProfilVolontaireView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.red)
                .ignoresSafeArea()
        Text("Profil")
            .foregroundColor(Color.white)
        }
    }
}

struct ProfilVolontaireView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilVolontaireView()
    }
}
