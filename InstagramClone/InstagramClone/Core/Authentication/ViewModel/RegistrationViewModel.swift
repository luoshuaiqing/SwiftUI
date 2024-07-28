//
//  RegistrationViewModel.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import Foundation

@Observable
class RegistrationViewModel {
    var username = ""
    var email = ""
    var password = ""
    
    init() {
        
    }
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
        username = ""
        email = ""
        password = ""
    }
}
