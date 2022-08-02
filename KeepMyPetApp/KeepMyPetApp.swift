//
//  KeepMyPetApp.swift
//  KeepMyPetApp
//
//  Created by Apprenant 01 on 28/03/2022.
//

import SwiftUI

@main
struct KeepMyPetApp: App {
    @StateObject var datas = KeepMyPetDatas()
    var body: some Scene{
        WindowGroup{
            if datas.loginType == "proprietaire" {
                ProprietaireTabView()
                    .environmentObject(datas)
            } else if datas.loginType == "volontaire"{
                KeepMyPetTabView()
                    .environmentObject(datas)
            } else {
                ChoixTypeDeProfilView()
                    .environmentObject(datas)
            }
        }
    }
}
