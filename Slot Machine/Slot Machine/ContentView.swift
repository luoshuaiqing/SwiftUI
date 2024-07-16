//
//  ContentView.swift
//  Slot Machine
//
//  Created by Shuaiqing Luo on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.colorPink, .colorPurple]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 5) {
                LogoView()
                
                Spacer()
                
                HStack {
                    HStack {
                        Text("Your\nCoins".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.trailing)
                        
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                    }
                    .modifier(ScoreContainerModifier())
                    
                    Spacer()
                    
                    HStack {
                        Text("200")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                        
                        Text("Your\nCoins".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.leading)
                    }
                    .modifier(ScoreContainerModifier())
                }
                
                VStack {
                    ZStack {
                        ReelView()
                        Image("gfx-bell")
                            .resizable()
                            .modifier(ImageModifier())
                    }
                    
                    HStack {
                        ZStack {
                            ReelView()
                            Image("gfx-seven")
                                .resizable()
                                .modifier(ImageModifier())
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ReelView()
                            Image("gfx-cherry")
                                .resizable()
                                .modifier(ImageModifier())
                        }
                    }
                    
                    Button(action: {}, label: {
                        Image("gfx-spin")
                            .renderingMode(.original)
                            .resizable()
                            .modifier(ImageModifier())
                    })
                }
                .frame(maxWidth: 500)
                
                Spacer()
                
                HStack {
                    HStack(spacing: 10) {
                        Button(action: {}, label: {
                            Text("20")
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                                .modifier(BetNumberModifier())
                        })
                        .background(
                            Capsule()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [.colorPink, .colorPurple]), startPoint: .top, endPoint: .bottom)
                                )
                        )
                        .padding(3)
                        .background(
                            Capsule()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [.colorPink, .colorPurple]), startPoint: .bottom, endPoint: .top)
                                )
                                .modifier(ShadowModifier())
                        )
                        
                        Image("gfx-casino-chips")
                            .resizable()
                            .opacity(1)
                            .scaledToFit()
                            .frame(height: 64)
                            .animation(.default, value: UUID())
                            .modifier(ShadowModifier())
                    }
                }
            }
            .overlay(
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.circlepath.circle")
                })
                .modifier(ButtonModifier()),
                alignment: .topLeading
            )
            .overlay(
                Button(action: {}, label: {
                    Image(systemName: "info.circle")
                })
                .modifier(ButtonModifier()),
                alignment: .topTrailing
            )
            .padding()
            .frame(maxWidth: 720)
        }
    }
}

#Preview {
    ContentView()
}
