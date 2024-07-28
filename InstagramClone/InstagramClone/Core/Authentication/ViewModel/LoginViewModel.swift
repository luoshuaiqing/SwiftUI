//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import Foundation

@Observable
class LoginViewModel {
    var email = ""
    var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
