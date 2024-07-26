//
//  GuideView.swift
//  HoneyMoon
//
//  Created by Shuaiqing Luo on 7/25/24.
//

import SwiftUI

struct GuideView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20, content: {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started!")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundStyle(.pink)
                
                Text("Discover and pick the perfect destination for your romantic HoneyMoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25, content: {
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe right",
                        description: "Do you like this destination? Touch the screen and swipe right. It will be saved to the favorites.", 
                        icon: "heart.circle")
                    
                    GuideComponent(
                        title: "Dismiss",
                        subtitle: "Swipe left",
                        description: "Would you rather skip this place? Touch the screen and swipe left. You will no longer see it.",
                        icon: "xmark.circle")
                    
                    GuideComponent(
                        title: "Book",
                        subtitle: "Tap the button",
                        description: "Our selection of honeymoon resorts is perfect setting for you to embark your new life together.",
                        icon: "checkmark.square")
                })
                
                Spacer(minLength: 10)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Continue".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Capsule().fill(.pink))
                        .foregroundStyle(.white)
                })
            })
//            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    GuideView()
}
