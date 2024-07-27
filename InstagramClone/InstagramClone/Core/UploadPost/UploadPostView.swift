//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var isPresented = false
    @State private var viewModel = UploadPostViewModel()
    
    var body: some View {
        VStack {
            // action tool bar
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                Text("Upload Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Upload")
                })
            }
            .padding(.horizontal)
            
            // post image and caption
            HStack(spacing: 8) {
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                TextField("Enter your caption", text: $caption, axis: .vertical)
            }
            .padding()
            
            Spacer()
        }
        .onAppear(perform: {
            isPresented = true
        })
        .photosPicker(isPresented: $isPresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView()
}
