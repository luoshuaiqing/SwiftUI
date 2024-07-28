//
//  UserService.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchAllUsers() async throws -> [User] {
        var users = [User]()
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let documents = snapshot.documents
        for doc in documents {
            guard let user = try? doc.data(as: User.self) else { continue }
            users.append(user)
        }
        return users
    }
}
