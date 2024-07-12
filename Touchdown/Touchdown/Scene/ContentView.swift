//
//  ContentView.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
                .padding()
                .background(.white)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    FeaturedTabView()
                        .frame(minHeight: 256)
                        .padding(.vertical, 20)
                    
                    CategoryGridView()
                    
                    TitleView(title: "Helmets")
                    
                    FooterView()
                        .padding(.horizontal)
                }
            }
        }
        .background(colorBackground)
    }
}

#Preview {
    ContentView()
}
