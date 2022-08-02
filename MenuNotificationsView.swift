//
//  MenuNotificationsView.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 29/03/2022.
//

import SwiftUI

struct MenuNotificationsView: View {
    @State var selection = 0
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(Color("blue2"))
                    .ignoresSafeArea()
                    .frame(height: 100)
                Image("logo")
                    .resizable()
                    .frame(width: 231, height:71 )
                    .scaledToFit()
            }
            HStack(spacing: 50){
                
                Button {
                    withAnimation {
                        selection = 0
                    }
                } label: {
                    Text("Notifications")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                
                Button {
                    withAnimation {
                        selection = 1
                    }
                    
                } label: {
                    Text("Messages")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("blue2"))
                }
            }
            
            TabView(selection: $selection) {
                
                NotifcationsMessagesView()
                    .tag(0)
                
                NotificationsAnnonceView()
                    .tag(1)

            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}
struct MenuNotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuNotificationsView()
    }
}
