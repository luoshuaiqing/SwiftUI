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
    @State var viewModel = EditProfileViewModel()
    
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
                .padding(.horizontal)
                
                Divider()
            }
            
            // edit profile pic
            PhotosPicker(selection: $viewModel.selectedImage) {
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
            VStack {
                EditProfileRowView(title: "Name", placeholder: "Enter your name..", text: $viewModel.fullname)
                
                EditProfileRowView(title: "Bio", placeholder: "Enter your bio..", text: $viewModel.bio)
            }
            
            Spacer()
        }
    }
}

struct EditProfileRowView: View {
    
    let title: String
    let placeholder: String
    @Binding var text: String

    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            
            VStack {
                TextField(placeholder, text: $text)
                
                Divider()
            }
            .font(.subheadline)
            .frame(height: 36)
        }
    }
}

#Preview {
    EditProfileView()
}
