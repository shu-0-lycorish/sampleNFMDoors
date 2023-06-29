//
//  SettingUserView.swift
//  sampleNFMDoors
//
//  Created by Shuhei Kawano on 2023/06/28.
//

import SwiftUI

struct SettingUserView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            Text("Hello, SettingUser!")
        }
        
    }
}

struct SettingUserView_Previews: PreviewProvider {
    static var previews: some View {
        SettingUserView()
    }
}
