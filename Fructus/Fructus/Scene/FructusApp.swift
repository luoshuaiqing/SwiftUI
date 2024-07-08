//
//  FructusApp.swift
//  Fructus
//
//  Created by Shuaiqing Luo on 7/7/24.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding == nil || isOnboarding! {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
