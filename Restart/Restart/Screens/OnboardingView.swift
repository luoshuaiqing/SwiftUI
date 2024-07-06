//
//  OnboardingView.swift
//  Restart
//
//  Created by Shuaiqing Luo on 7/6/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }, label: {
                Text("Start")
            })
        }
    }
}

#Preview {
    OnboardingView()
}
