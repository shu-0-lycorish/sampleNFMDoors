//
//  SettingStoreView.swift
//  sampleNFMDoors
//
//  Created by Shuhei Kawano on 2023/06/28.
//

import SwiftUI

struct SettingStoreView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            Text("Hello, SettingStore!")
        }
    }
}

struct SettingStoreView_Previews: PreviewProvider {
    static var previews: some View {
        SettingStoreView()
    }
}
