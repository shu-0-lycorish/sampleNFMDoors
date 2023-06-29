//
//  HomeView.swift
//  sampleNFMDoors
//
//  Created by Shuhei Kawano on 2023/06/26.
//

import SwiftUI

struct TaskData: Identifiable {
    var title: String
    var completed: Bool
    var id = UUID()
}

struct HomeView: View {
    @State var nameNFM = "ねこぱっち"
    @State var taskData = [
            TaskData(title: "ごはん", completed: false),
            TaskData(title: "そうじ", completed: false),
            TaskData(title: "あそぶ", completed: false)
        ]
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            
            VStack {
                VStack {
                    Text("今日のやること")
                        .padding()
                    VStack {
                        HStack {
                            Text("朝")
                            Rectangle()
                                .fill(Color("ProgressColor"))
                                .frame(width: 250, height: 10)
                                .cornerRadius(45.0)
                        }
                        .padding(5)
                        
                        Divider()
                        
                        HStack {
                            Text("昼")
                            Rectangle()
                                .fill(Color("ProgressColor"))
                                .frame(width: 250, height: 10)
                                .cornerRadius(45.0)
                            
                        }
                        .padding(5)
                        
                        Divider()
                        
                        HStack {
                            Text("夜")
                            Rectangle()
                                .fill(Color("ProgressColor"))
                                .frame(width: 250, height: 10)
                                .cornerRadius(45.0)
                            
                        }
                        .padding(5)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity)
                .background(Color("CardBackgroundColor"))
                .cornerRadius(10)
                .shadow(radius: 10)
                .scrollContentBackground(.hidden)
                .padding(.vertical, 5)
                .padding(.horizontal, 15)
                
                VStack {
                    Text("\(nameNFM)のお部屋")
                        .padding()
                    
                    Image("SampleRoom")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .background(Color.white)
                }
                .frame(maxWidth: .infinity)
                .background(Color("CardBackgroundColor"))
                .cornerRadius(10)
                .shadow(radius: 10)
                .scrollContentBackground(.hidden)
                .padding(.vertical, 5)
                .padding(.horizontal, 15)
                
                HStack {
                    Button {
                        
                    } label: {
                        Image("CommandEat")
                            .resizable()
                            .scaledToFit()
                            //.frame(height: 100)
                            .background(Color.white)
                        
                    }
                    .background(Color("CardBackgroundColor"))
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image("CommandPlay")
                            .resizable()
                            .scaledToFit()
                            //.frame(height: 100)
                            .background(Color.white)
                    }
                    .background(Color("CardBackgroundColor"))
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image("CommandClean")
                            .resizable()
                            .scaledToFit()
                            //.frame(height: 100)
                            .background(Color.white)
                    }
                    .background(Color("CardBackgroundColor"))
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .padding(.horizontal, 15)
                
                Spacer()
            }
            
        }
    }
}

struct Item {
    var isChecked: Bool
    var name: String
    
    init(_ name: String) {
        self.isChecked = false
        self.name = name
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
