//
//  ContentView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 22/03/2022.
//

import SwiftUI

struct KeepMyPetTabView: View {
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    VStack{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }
            ProfilVolontaireView()
                .tabItem{
                    VStack{
                        Image(systemName: "person.fill")
                        Text("Profil")
                    }
                }
            MessagerieView()
                .tabItem{
                    VStack{
                        Image(systemName: "message")
                        Text("Messages")
                    }
                }
            ReglagesView()
                .tabItem{
                    VStack{
                        Image(systemName: "gearshape.fill")
                        Text("Réglages")
                    }
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        KeepMyPetTabView()
    }
}
