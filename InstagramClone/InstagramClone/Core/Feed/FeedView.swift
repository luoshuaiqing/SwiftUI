//
//  FeedView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/26/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 32) {
                ForEach(0...10, id: \.self) { post in
                    FeedCell()
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
