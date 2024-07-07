//
//  FruitCardView.swift
//  Fructus
//
//  Created by Shuaiqing Luo on 7/7/24.
//

import SwiftUI

struct FruitCardView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: [.colorBlueberryLight, .colorBlueberryDark]), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
    }
}

#Preview(traits: .fixedLayout(width: 320, height: 640)) {
    FruitCardView()
}
