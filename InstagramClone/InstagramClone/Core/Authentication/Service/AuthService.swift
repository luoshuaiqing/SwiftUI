//
//  AuthService.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession = Auth.auth().currentUser
    
    static let shared = AuthService()
    
    func login(withEmail email: String, password: String) async throws {
        let result = try await Auth.auth().signIn(withEmail: email, password: password)
        userSession = result.user
    }
    
    func createUser(email: String, password: String, username: String) async throws {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        userSession = result.user
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        try? Auth.auth().signOut()
        userSession = nil
    }
}

private extension AuthService {
    
    private func uploadUserData() async {
        
    }
}
