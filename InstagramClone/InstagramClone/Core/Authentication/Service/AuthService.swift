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
        print("Email: \(email)")
        print("Password: \(password)")
        print("Username: \(username)")
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
    }
}
