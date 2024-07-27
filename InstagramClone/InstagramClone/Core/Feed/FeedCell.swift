//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/26/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            // image + username
            HStack {
                Image("placeholder-ironman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(.circle)
                
                Text("batman")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 12)
            
            // post image
            Image("placeholder-ironman")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(.rect)
            
            // action buttons
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                })
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(.black)
            
            // likes label
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            // caption label
            HStack {
                Text("batman ").fontWeight(.semibold)
                +
                Text("This is some test caption for now")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    FeedCell()
}
