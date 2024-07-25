//
//  HeaderComponent.swift
//  HoneyMoon
//
//  Created by Shuaiqing Luo on 7/25/24.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(spacing: 20, content: {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundStyle(.secondary)
                .opacity(0.2)
            
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        })
    }
}

#Preview {
    HeaderComponent()
}
