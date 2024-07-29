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
        let snapshot = try await Firestore.firestore().collection("posts").getDocuments()
        posts = try snapshot.documents.compactMap({
            try $0.data(as: Post.self)
        })
        
        for post in posts {
            let ownerUid = post.ownerUid
            let postUser = try await UserService.fetchUser(with: ownerUid)
        }
    }
}
