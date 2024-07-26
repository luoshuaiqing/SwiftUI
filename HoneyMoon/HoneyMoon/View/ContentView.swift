//
//  ContentView.swift
//  HoneyMoon
//
//  Created by Shuaiqing Luo on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var showBookingAlert = false
    @State var showGuideView = false
    @State var showInfoView = false
    
    var cardViews: [CardView] = {
        honeyMoonData.map {
            CardView(honeyMoon: $0)
        }
    }()
    
    private func isTopCard(cardView: CardView) -> Bool {
        guard let index = cardViews.prefix(2).firstIndex(where: { $0.id == cardView.id }) else {
            return false
        }
        return index == 0
    }
    
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuideView, showInfoView: $showInfoView)
            
            Spacer()
            
            ZStack {
                ForEach(cardViews) {
                    $0
                        .zIndex(isTopCard(cardView: $0) ? 1 : 0)
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            FooterView(showBookingAlert: $showBookingAlert)
        }
        .alert(isPresented: $showBookingAlert, content: {
            Alert(
                title: Text("SUCCESS"),
                message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
                dismissButton: .default(Text("Happy HoneyMoon!"))
            )
        })
    }
}

#Preview {
    ContentView()
}
