//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import SwiftUI

struct PostGridView: View {
    
    let posts: [Post]
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    private let imageDimension = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 1, content: {
            ForEach(posts) { post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
            }
        })
    }
}

#Preview {
    PostGridView(posts: Post.MOCK_POSTS)
}
