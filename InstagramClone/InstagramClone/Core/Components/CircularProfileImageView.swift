//
//  CircularProfileImageView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import SwiftUI
import Kingfisher

struct CircularProfileImageView: View {
    
    let user: User
    
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(.circle)
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(.circle)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_USERS[0])
}
