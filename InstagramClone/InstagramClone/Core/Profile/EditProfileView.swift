//
//  EditProfileView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import SwiftUI

struct EditProfileView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            // toolbar
            VStack {
                HStack {
                    Button("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    })
                }
                .padding()
                
                Divider()
            }
            
            // edit profile pic
            
            // edit profile info
        }
    }
}

#Preview {
    EditProfileView()
}
