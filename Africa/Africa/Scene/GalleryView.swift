//
//  GalleryView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct GalleryView: View {
    
    let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: gridLayout) {
                ForEach(0 ..< 12) { item in
                    Text("Placeholder")
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
