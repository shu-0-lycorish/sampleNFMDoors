//
//  SettingContactView.swift
//  sampleNFMDoors
//
//  Created by Shuhei Kawano on 2023/06/29.
//

import SwiftUI

struct SettingContactView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            Text("Hello, SettingContact!")
        }
    }
}

struct SettingContactView_Previews: PreviewProvider {
    static var previews: some View {
        SettingContactView()
    }
}
