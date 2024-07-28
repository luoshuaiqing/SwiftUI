//
//  Post.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "This is some test caption for now", likes: 123, imageUrl: User.MOCK_USERS[0].profileImageUrl ?? "", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "This is some test caption for now", likes: 104, imageUrl: User.MOCK_USERS[1].profileImageUrl ?? "", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "This is some test caption for now", likes: 12243, imageUrl: User.MOCK_USERS[2].profileImageUrl ?? "", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "This is some test caption for now", likes: 5, imageUrl: User.MOCK_USERS[3].profileImageUrl ?? "", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "This is some test caption for now", likes: 13, imageUrl: User.MOCK_USERS[4].profileImageUrl ?? "", timestamp: Date(), user: User.MOCK_USERS[4]),
    ]
}
