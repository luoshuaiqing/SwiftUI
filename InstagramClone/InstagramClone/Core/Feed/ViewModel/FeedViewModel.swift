//
//  FeedViewModel.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import Foundation
import Firebase

@Observable
class FeedViewModel {
    var posts = [Post]()
    
    init() {
        Task {
            try await fetchPosts()
        }
    }
    
    func fetchPosts() async throws {
        posts = try await PostService.fetchFeedPosts()
    }
}
