//
//  EditProfileView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var selectedImage: PhotosPickerItem?
    
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
            PhotosPicker(selection: $selectedImage) {
                VStack {
                    Image(systemName: "person")
                        .resizable()
                        .foregroundStyle(.white)
                        .background(.gray)
                        .clipShape(.circle)
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                    
                    Text("Edit Profile Picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Divider()
                }
            }
            .padding(.vertical, 8)
            
            // edit profile info
        }
    }
}

#Preview {
    EditProfileView()
}
