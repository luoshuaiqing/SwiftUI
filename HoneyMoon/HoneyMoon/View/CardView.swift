//
//  CardView.swift
//  HoneyMoon
//
//  Created by Shuaiqing Luo on 7/25/24.
//

import SwiftUI

struct CardView: View {
    
    let id = UUID()
    let honeyMoon: Destination
    
    var body: some View {
        Image(honeyMoon.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .overlay(alignment: .bottom) {
                VStack(alignment: .center, spacing: 12, content: {
                    Text(honeyMoon.place.uppercased())
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay(
                            Rectangle()
                                .fill(.white)
                                .frame(height: 1),
                            alignment: .bottom
                        )
                    Text(honeyMoon.country.uppercased())
                        .foregroundStyle(.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule().fill(.white)
                        )
                })
                .frame(minWidth: 280)
                .padding(.bottom, 50)
            }
    }
}

#Preview {
    CardView(honeyMoon: honeyMoonData[1])
}
