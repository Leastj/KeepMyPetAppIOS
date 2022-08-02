//
//  ProprietaireTabView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 28/03/2022.
//

import SwiftUI

struct ProprietaireTabView: View {
    var body: some View {
        TabView{
            
            ProfilProprietaireView()
                .tabItem{
                    VStack{
                        Image(systemName: "person.fill")
                        Text("Profil")
                    }
                }
            MessagerieProprietaireView()
                .tabItem{
                    VStack{
                        Image(systemName: "message")
                        Text("Messages")
                    }
                }
            ReglagesProprietaireView()
                .tabItem{
                    VStack{
                        Image(systemName: "gearshape.fill")
                        Text("Réglages")
                    }
                }
        }
    }
}

struct ProprietaireTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProprietaireTabView()
    }
}
