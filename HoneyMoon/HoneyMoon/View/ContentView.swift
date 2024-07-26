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
    
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuideView, showInfoView: $showInfoView)
            
            Spacer()
            
            ZStack {
                ForEach(cardViews) {
                    $0
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
