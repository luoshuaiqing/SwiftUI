//
//  SearchViewModel.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import Foundation

@Observable
class SearchViewModel {
    var users = [User]()
    
    init() {
        Task {
            try await fetchAllUsers()
        }
    }
    
    func fetchAllUsers() async throws {
        let users = try await UserService.fetchAllUsers()
    }
}
