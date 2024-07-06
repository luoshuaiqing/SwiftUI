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
            
            Spacer()
            
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                
                Image(.character2)
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button(action: {
                isOnboardingViewActive = true
            }, label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
    }
}

#Preview {
    HomeView()
}
