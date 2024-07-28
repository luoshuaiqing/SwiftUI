//
//  AuthService.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase

class AuthService {
    
    @Published var userSession = Auth.auth().currentUser
    
    static let shared = AuthService()
    
    func login(withEmail email: String, password: String) async throws {
        let result = try await Auth.auth().signIn(withEmail: email, password: password)
        userSession = result.user
    }
    
    func createUser(email: String, password: String, username: String) async throws {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        print("DEBUG: Did create user..")
        try await uploadUserData(uid: result.user.uid, username: username, email: email)
        userSession = result.user
        print("DEBUG: Did upload user data..")
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        try? Auth.auth().signOut()
        userSession = nil
    }
}

private extension AuthService {
    
    private func uploadUserData(uid: String, username: String, email: String) async throws {
        let user = User(id: uid, username: username, email: email)
        let encodedUser = try Firestore.Encoder().encode(user)
        try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
    }
}
