//
//  PostService.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import Foundation
import Firebase

struct PostService {
    
    private static let postsCollection = Firestore.firestore().collection("posts")
    
    static func fetchFeedPosts() async throws -> [Post] {
        let snapshot = try await Firestore.firestore().collection("posts").getDocuments()
        var posts = try snapshot.documents.compactMap({
            try $0.data(as: Post.self)
        })
        
        for i in 0 ..< posts.count {
            let ownerUid = posts[i].ownerUid
            let postUser = try await UserService.fetchUser(with: ownerUid)
            posts[i].user = postUser
        }
        
        return posts
    }
    
    static func fetchUserProfile(uid: String) async throws -> [Post] {
        let snapshot = try await postsCollection.whereField("ownerUid", isEqualTo: uid).getDocuments()
        return try snapshot.documents.compactMap {
            try $0.data(as: Post.self)
        }
    }
}
