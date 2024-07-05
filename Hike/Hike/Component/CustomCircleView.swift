//
//  CustomCircleView.swift
//  Hike
//
//  Created by Shuaiqing Luo on 7/5/24.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradient: Bool = false
    
    var test: Int {
        print("hi")
        return Int.random(in: 0...100)
    }
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .black,
                            .colorIndigoMedium,
                            .colorSalmonLight
                        ],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient = true
                    }
                }
            Color(test % 2 == 0 ? .red : .blue)
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
