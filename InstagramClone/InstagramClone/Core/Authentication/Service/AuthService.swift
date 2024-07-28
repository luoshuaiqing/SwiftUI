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
        
    }
    
    func createUser(email: String, password: String, username: String) async throws {
        print("password: \(password)")
        print("email: \(email)")
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        self.userSession = result.user
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
    }
}
