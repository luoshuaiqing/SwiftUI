//
//  UploadPostViewModel.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/27/24.
//

import Foundation
import SwiftUI
import PhotosUI
import Firebase

@Observable
class UploadPostViewModel {
    
    var selectedImage: PhotosPickerItem? {
        didSet {
            Task {
                await loadImage(fromItem: selectedImage)
            }
        }
    }
    
    var postImage: Image?
    private var uiImage: UIImage?
    
    private func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let image = UIImage(data: data) else { return }
        uiImage = image
        postImage = Image(uiImage: image)
    }
    
    func uploadPost(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        guard let uiImage else { return }

        let postRef = Firestore.firestore().collection("posts").document()
        guard let imageUrl = try await ImageUploader.uploadImage(image: uiImage) else { return }
        let post = Post(id: postRef.documentID, ownerUid: uid, caption: caption, likes: 0, imageUrl: "", timestamp: Timestamp())
        let encodedPost = try Firestore.Encoder().encode(post)
        try await postRef.setData(encodedPost)
    }
}
