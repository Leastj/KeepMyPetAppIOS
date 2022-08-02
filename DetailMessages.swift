//
//  DetailMessages.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 24/03/2022.
//

import SwiftUI

struct DetailMessages: View {
    @State var typingMessage: String = ""   
    var messageProprietaire: Messages
    
    var messages = ["Bonjour, je suis intéréssé par votre annonce de garde a domicile.", "Bonjour, c'est super, le chien est très gentil, vous allez passer un bon moment.", "Génial, sinon sur la gestion de la maison il y a des choses a savoir?", "Le chauffage sera éteint quand vous arriverez mais l'allumage est centralisé a l'entrée.", "D'accord, aucun soucis c'est parfait.","D'ailleurs, vous aurez tout son carnet de santé sur la table à l'entrée, il est très cool et comprend très bien. Il n'a pas peur des étrangers. Vous avez un jardin aussi!","Ok c'est super ça, j'ai déja garder plusieurs chiens mais le principe de l'application m'interesse beaucoup","Oui c'est super pratique!", "A dans deux semaines alors.", "À très vite !"]
    var body: some View {
        VStack(spacing:0){
            ZStack{
                Rectangle()
                    .foregroundColor(Color("blue2"))
                    .ignoresSafeArea()
                    .frame(height: 80)
                HStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 231, height:71 )
                        .scaledToFit()
                }
            }
            ZStack {
                Rectangle()
                    .foregroundColor(Color(red: 0.898, green: 0.898, blue: 0.898))
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 0){
                        ForEach(0..<messages.count) { index in
                            
                            VStack{
                                HStack{
                                    if index % 2 == 0 {
                                        Spacer()
                                    }
                                    Text(messages[index])
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color.white)
                                        .padding()
                                        .background(index % 2 == 0 ?  Rectangle().fill(Color("blue2")) : Rectangle().fill(Color("red2")))
                                        .cornerRadius(20)
                                        .frame(maxWidth:300, alignment: index % 2 == 0 ? .trailing : .leading)
                                        .padding(5)
                                    if index % 2 == 1 {
                                        Spacer()
                                    }
                                }
                            }
                            
                        }
                    }
                    
                    .frame(width: .infinity, height: .infinity)
                }
            }
            
            HStack {
                TextField("Message...", text: $typingMessage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(minHeight: CGFloat(30))
                Button(action: {
                    
                }, label: {
                    Text("Send")
                })
            }.frame(minHeight: CGFloat(50))
                .padding()
        }
    }
}

struct DetailMessages_Previews: PreviewProvider {
    static var previews: some View {
        DetailMessages(messageProprietaire: messagerie[0])
    }
}
