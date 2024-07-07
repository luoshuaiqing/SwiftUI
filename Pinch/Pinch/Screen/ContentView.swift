//
//  ContentView.swift
//  Pinch
//
//  Created by Shuaiqing Luo on 7/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
            }
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
}
