//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/26/24.
//

import SwiftUI

struct UserStatView: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 72)
    }
}

#Preview {
    UserStatView(value: 3, title: "Posts")
}
