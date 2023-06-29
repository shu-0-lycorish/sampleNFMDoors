//
//  SettingView.swift
//  sampleNFMDoors
//
//  Created by Shuhei Kawano on 2023/06/26.
//

import SwiftUI

struct SettingView: View {
    @State var userName = "川野 修平"
    @State var remainingDays = 14
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack {
                        Image("ProfileImg")
                            .resizable()
                            .scaledToFill()
                            .background(Color.white)
                            .frame(width: 100, height: 100)
                            .cornerRadius(75)
                            .overlay(
                                RoundedRectangle(cornerRadius: 75).stroke(Color.gray, lineWidth: 3)
                            )
                            .padding()
                        
                        Spacer()
                        
                        Text(userName)
                            .font(.title2)
                            .padding()
                        
                        Spacer()
                    }
                    Text("新しい家族のお迎えまで\(remainingDays)日")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                }
                
                Section {
                    
                    HStack {
                        Image(systemName: "person")
                            .frame(width: 12, height: 12)
                            .padding()
                        NavigationLink(destination: SettingUserView()) {
                            Text("あなたの情報")
                        }
                    }
                    
                    HStack {
                        Image(systemName: "house.and.flag")
                            .frame(width: 12, height: 12)
                            .padding()
                        NavigationLink(destination: SettingStoreView()) {
                            Text("お店の情報")
                        }
                    }
                    
                    HStack {
                        Image(systemName: "gear")
                            .frame(width: 12, height: 12)
                            .padding()
                        NavigationLink(destination: SettingAppView()) {
                            Text("アプリの設定")
                        }
                    }
                    
                }
                Section {
                    HStack {
                        Image(systemName: "questionmark")
                            .frame(width: 12, height: 12)
                            .padding()
                        NavigationLink("よくある質問") {
                            SettingFAQView()
                        }
                    }
                    HStack {
                        Image(systemName: "bubble.right")
                            .frame(width: 12, height: 12)
                            .padding()
                        NavigationLink("お問い合わせ") {
                            SettingContactView()
                        }
                    }
                }
            }
            .shadow(radius: 10)
            .scrollContentBackground(.hidden)
            .background(Color("BackgroundColor"))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

