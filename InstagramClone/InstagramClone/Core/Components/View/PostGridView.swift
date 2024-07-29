//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import SwiftUI
import Kingfisher

struct PostGridView: View {
    
    @State private var viewModel: PostGridViewModel
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    private let imageDimension = (UIScreen.main.bounds.width / 3) - 1
    
    init(user: User) {
        viewModel = PostGridViewModel(user: user)
    }
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 1, content: {
            ForEach(viewModel.posts) { post in
                KFImage(URL(string: post.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
            }
        })
    }
}

#Preview {
    PostGridView(user: User.MOCK_USERS[0])
}
