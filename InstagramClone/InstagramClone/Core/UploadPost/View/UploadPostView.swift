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
    @Binding var tabIndex: Int
    
    var body: some View {
        VStack {
            // action tool bar
            HStack {
                Button(action: {
                    clearPostDataAndReturnToFeed()
                }, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                Text("Upload Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    Task {
                        try await viewModel.uploadPost(caption: caption)
                        clearPostDataAndReturnToFeed()
                    }
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
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
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
    
    func clearPostDataAndReturnToFeed() {
        caption = ""
        viewModel.selectedImage = nil
        viewModel.postImage = nil
        tabIndex = 0
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
