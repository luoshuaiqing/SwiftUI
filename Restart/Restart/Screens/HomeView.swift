//
//  HomeView.swift
//  Restart
//
//  Created by Shuaiqing Luo on 7/6/24.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true
            }, label: {
                Text("Restart")
            })
        }
    }
}

#Preview {
    HomeView()
}
