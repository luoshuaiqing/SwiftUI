//
//  ContentView.swift
//  Restart
//
//  Created by Shuaiqing Luo on 7/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool?
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive == nil || isOnboardingViewActive! {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeOut(duration: 0.5), value: isOnboardingViewActive)
    }
}

#Preview {
    ContentView()
}
