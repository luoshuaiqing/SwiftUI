//
//  StartButtonView.swift
//  Fructus
//
//  Created by Shuaiqing Luo on 7/7/24.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        })
        .accentColor(.white)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
        .preferredColorScheme(.dark)
}
