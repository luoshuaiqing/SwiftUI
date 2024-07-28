//
//  EditProfileViewModel.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/28/24.
//

import Foundation
import PhotosUI
import Firebase
import SwiftUI

@Observable
class EditProfileViewModel {
    
    private var user: User
    
    var fullname = ""
    var bio = ""
    var selectedImage: PhotosPickerItem? {
        didSet {
            Task {
                await loadImage(fromItem: selectedImage)
            }
        }
    }
    var profileImage: Image?
    
    init(user: User) {
        self.user = user
    }
    
    private func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let image = UIImage(data: data) else { return }
        profileImage = Image(uiImage: image)
    }
    
    func updateUserData() async throws {
        // update profile image if changed
        
        var data = [String: Any]()
        
        // update name if changed
        if !fullname.isEmpty, user.fullname != fullname {
            data["fullname"] = fullname
        }
        
        // update bio if changed
        if !bio.isEmpty, user.bio != bio {
            data["bio"] = bio
        }
        
        if !data.isEmpty {
            try await Firestore.firestore().collection("users").document(user.id).updateData(data)
        }
    }
}