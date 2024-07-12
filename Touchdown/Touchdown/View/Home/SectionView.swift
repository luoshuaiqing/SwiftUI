//
//  SectionView.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/12/24.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack(spacing: 0, content: {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        })
        .background(colorGray.cornerRadius(12))
    }
}

#Preview {
    SectionView(rotateClockwise: true)
}
