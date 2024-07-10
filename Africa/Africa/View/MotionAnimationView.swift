//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/10/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    
    func randomCoordinate(max: CGFloat) -> CGFloat {
        .random(in: 0...max)
    }
    
    func randomSize() -> CGFloat {
        .random(in: 10...300)
    }
    
    func randomScale() -> CGFloat {
        .random(in: 0.1...2.0)
    }
    
    func randomSpeed() -> Double {
        .random(in: 0.025...1)
    }
    
    func randomDelay() -> Double {
        .random(in: 0...2)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(randomScale())
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                        )
                        .animation(
                            .interpolatingSpring(stiffness: 0.5, damping: 0.5)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay()),
                            value: UUID()
                        )
                        .onAppear {
                            isAnimating = true
                        }
                }
            }
            .drawingGroup()
        }
    }
}

#Preview {
    MotionAnimationView()
}
