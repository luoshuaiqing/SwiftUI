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
            .padding(.leading)
            
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
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
            }
            
            // likes label
            
            // caption label
        }
    }
}

#Preview {
    FeedCell()
}
