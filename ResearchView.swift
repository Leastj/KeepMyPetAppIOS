//
//  ResearchView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 23 on 28/03/2022.
//

import SwiftUI

struct ResearchView: View {
    //    private var listOfAnnonce = annonces
    @State var searchText = ""
    var body: some View {
//        NavigationView{
            
            List {
                ForEach(searchResults){ annonce in
                    ListAnnonceRow(annonce: annonce)
                }
            }
            
            .searchable(text: $searchText)
            .navigationBarTitle("Recherche")
            
            
            
            
            
            
//        }
    }
    
    var searchResults: [Annonce] {
        
        let search = searchText.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        if searchText.isEmpty {
            return annonces
        } else {
            return annonces.filter({
                $0.titreAnnonce.lowercased().contains(search) ||
                $0.lieu.contains(where: { lieu in
                    lieu.lowercased().contains(search)
                }) ||
                $0.niveau.lowercased().contains(search) ||
                $0.typologieAnimal.contains(where: { typo in
                    typo.lowercased().contains(search)
                })
            })
            
        }
    }
    
    
}


struct ResearchView_Previews: PreviewProvider {
    static var previews: some View {
        ResearchView()
    }
}

struct ListAnnonceRow: View {
    var annonce:Annonce
    var body: some View {
        
        NavigationLink(destination: StructureAnnonce(annonce: annonce)) {
        
        
        HStack {
            
            Image (annonce.photos[0])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 72, height: 71)
            
            VStack{
                
                Text (annonce.titreAnnonce)
                    .font(Font.custom("Futura-Medium", size: 16))
                    .foregroundColor(Color(red: 1, green: 0.412, blue: 0.38))
                
                
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "calendar")
                            .resizable()
                            .frame(width: 14.0, height: 14.0)
                            .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                        
                        
                        Text ("Du \(annonce.dateDébut) au \(annonce.dateFin)")
                            .font(Font.custom("Futura-Medium", size: 12))
                            .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.576))
                        
                        
                    }
                    
                    
                    HStack{
                        Image("locablue")
                            .resizable()
                            .frame(width: 14.0, height: 16.0)
                            .foregroundColor(Color(red: 0.333, green: 0.733, blue: 0.71))
                        
                        
                        Text ("\(annonce.lieu[0]), \(annonce.département)")
                            .font(Font.custom("Futura-Medium", size: 12))
                            .foregroundColor(Color(red: 0.333, green: 0.733, blue: 0.71))
                        
                        
                    }
                }
            }
            
            Spacer()
            
        }.padding()
    }
}
}
