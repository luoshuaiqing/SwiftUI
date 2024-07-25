//
//  ContentView.swift
//  HoneyMoon
//
//  Created by Shuaiqing Luo on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeyMoon: honeyMoonData[1])
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
