//
//  User.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import Foundation
import Firebase

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        Auth.auth().currentUser?.uid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: UUID().uuidString, username: "batman", profileImageUrl: nil, fullname: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: UUID().uuidString, username: "venom", profileImageUrl: nil, fullname: "Eddie Brock", bio: "Venom", email: "venom@gmail.com"),
        .init(id: UUID().uuidString, username: "ironman", profileImageUrl: nil, fullname: "Tony Stark", bio: "Playboy & Billionaire", email: "ironman@gmail.com"),
        .init(id: UUID().uuidString, username: "blackpanther", profileImageUrl: nil, fullname: "Black Panther", bio: "Wakanda Forever", email: "blackpanther@gmail.com"),
        .init(id: UUID().uuidString, username: "spiderman", profileImageUrl: nil, fullname: "Peter Parker", bio: "Test bio", email: "spiderman@gmail.com"),
    ]
}
