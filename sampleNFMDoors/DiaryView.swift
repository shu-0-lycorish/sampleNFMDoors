//
//  DiaryView.swift
//  sampleNFMDoors
//
//  Created by Shuhei Kawano on 2023/06/26.
//

import SwiftUI

struct DiaryView: View {
    @State var moneyEat: Int = 10000
    @State var moneyClean: Int = 5000
    @State var moneyPlay: Int = 3000
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Image("DiaryMoney")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.leading, 20)
                    
                    VStack {
                        Text("かかったお金は")
                        Text("¥ \(moneyEat + moneyClean + moneyPlay)")
                        Divider()
                        
                        HStack {
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("ごはん： ¥")
                                Text("そうじ： ¥")
                                Text("あそぶ： ¥")
                            }
                            VStack(alignment: .trailing) {
                                Text("\(moneyEat)")
                                Text("\(moneyClean)")
                                Text("\(moneyPlay)")
                            }
                            
                            Spacer()
                        }
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
                    HStack {
                        Spacer()
                        Text("お世話の記録")
                        Spacer()
                        Image("DiaryRecord")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(.trailing, 20)
                    }
                    
                    Divider()
                    
                    VStack {
                        VStack {
                            Text("時間帯")
                            HStack {
                                CircleProgressView(recordProgress: Int(80), recordLabel: "朝")
                                Spacer()
                                CircleProgressView(recordProgress: Int(80), recordLabel: "昼")
                                Spacer()
                                CircleProgressView(recordProgress: Int(100), recordLabel: "夜")
                            }
                        }
                        .padding()
                        
                        VStack {
                            Text("お世話")
                            HStack {
                                CircleProgressView(recordProgress: Int(100), recordLabel: "ごはん")
                                Spacer()
                                CircleProgressView(recordProgress: Int(60), recordLabel: "そうじ")
                                Spacer()
                                CircleProgressView(recordProgress: Int(80), recordLabel: "あそぶ")
                            }
                        }
                        .padding()
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
                
            }
        }
    }
}

struct CircleProgressView: View {
    var recordProgress: Int
    var recordLabel: String
    
    var body: some View {
        ZStack {
            // 下の円
            Circle()
                .stroke(
                    Color.gray,
                    style: StrokeStyle(
                        lineWidth: 15, // 線の太さ
                        lineCap: .round) // 線の端の形状
                )
                .opacity(0.5) // 透明度
                .frame(width: 80, height: 80) // 大きさ
            // 上の円
            Circle()
                .trim(from: 0.0, to: CGFloat(recordProgress)/100) // 線のトリム
                .stroke(
                    Color("ProgressColor"),
                    style: StrokeStyle(
                        lineWidth: 15,
                        lineCap: .round)
                )
                .frame(width: 80, height: 80)
                .rotationEffect(Angle(degrees: -90))
            
            VStack{
                Text("\(recordLabel)")
                Text("\(recordProgress) %")
            }
        }
    }
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryView()
    }
}
