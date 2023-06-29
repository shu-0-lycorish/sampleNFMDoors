//
//  ContentView.swift
//  sampleNFMDoors
//
//  Created by Shuhei Kawano on 2023/06/26.
//

import SwiftUI

struct ContentView: View {

    // タブの選択項目を保持する
    @State var selection = 1
    @State var selectTab = false

    var body: some View {

        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            TabView(selection: $selection) {
                DiaryView()   // Viewファイル②
                    .tabItem {
                        Image(systemName: "bookmark")
                        // Label("Diary", systemImage: "bookmark")
                    }
                    .tag(2)
                
                HomeView()   // Viewファイル①
                    .tabItem {
                        Image(systemName: "house")
                        // Label("Home", systemImage: "house")
                    }
                    .tag(1)

                SettingView()  // Viewファイル③
                    .tabItem {
                        Image(systemName: "person")
                        Label("", systemImage: "person")
                    }
                    .tag(3)
            } // TabView ここまで
            .tabViewStyle(.page)
            
            HStack(spacing: 20) {
                Button {
                    selection = 2
                } label: {
                    if selection == 2 {
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(Color("TabFillColor"))
                    } else {
                        Image(systemName: "bookmark")
                            .foregroundColor(.gray)
                    }
                }
                
                Divider()
                
                Button {
                    selection = 1
                } label: {
                    if selection == 1 {
                        Image(systemName: "house.fill")
                            .foregroundColor(Color("TabFillColor"))
                    } else {
                        Image(systemName: "house")
                            .foregroundColor(.gray)
                    }
                }
                
                Divider()
                Button {
                    selection = 3
                } label: {
                    if selection == 3 {
                        Image(systemName: "person.fill")
                            .foregroundColor(Color("TabFillColor"))
                    } else {
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                    }
                }
            }
            .frame(width: 180, height: 20)
            .padding()
            .background(Color("CardBackgroundColor"))
            .cornerRadius(20)
            .shadow(radius: 6)
            .offset(x: 0, y: 360)
        }

    } // body
} // View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
