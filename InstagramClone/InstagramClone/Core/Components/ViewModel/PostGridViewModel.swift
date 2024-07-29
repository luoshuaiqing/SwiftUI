//
//  PostGridViewModel.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import Foundation

@Observable
class PostGridViewModel {
    
    private let user: User
    var posts = [Post]()
    
    init(user: User) {
        self.user = user
        
        Task {
            try await fetchUserPost()
        }
    }
    
    func fetchUserPost() async throws {
        posts = try await PostService.fetchUserProfile(uid: user.id)
        
        for i in 0 ..< posts.count {
            posts[i].user = self.user
        }
    }
}
