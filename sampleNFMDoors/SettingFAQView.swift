//
//  SettingFAQView.swift
//  sampleNFMDoors
//
//  Created by Shuhei Kawano on 2023/06/29.
//

import SwiftUI

struct SettingFAQView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            Text("Hello, SettingFAQ!")
        }
    }
}

struct SettingFAQView_Previews: PreviewProvider {
    static var previews: some View {
        SettingFAQView()
    }
}
