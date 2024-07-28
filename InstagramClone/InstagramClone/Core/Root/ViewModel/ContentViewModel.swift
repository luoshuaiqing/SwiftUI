//
//  ContentViewModel.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import Foundation
import Firebase
import Combine

@Observable
class ContentViewModel {
    
    private var cancellables = Set<AnyCancellable>()
    
    var userSession: FirebaseAuth.User?
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}
