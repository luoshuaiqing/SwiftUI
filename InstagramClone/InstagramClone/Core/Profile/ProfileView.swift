//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/26/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // header
            VStack {
                // pic and stats
                HStack {
                    Image("placeholder-ironman")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                }
                
                // name and bio
                VStack(alignment: .leading, spacing: 4) {
                    Text("Chadwick Bozeman")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("Wakanda Forever")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                // action button
                Button(action: {
                    
                }, label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.vertical, 5)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .overlay {
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(.gray, lineWidth: 1)
                        }
                })
                .padding(.horizontal)
                
                Divider()
            }
        }
    }
}

#Preview {
    ProfileView()
}
