//
//  SettingAppView.swift
//  sampleNFMDoors
//
//  Created by Shuhei Kawano on 2023/06/29.
//

import SwiftUI

struct SettingAppView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            Text("Hello, SettingApp!")
        }
    }
}

struct SettingAppView_Previews: PreviewProvider {
    static var previews: some View {
        SettingAppView()
    }
}
