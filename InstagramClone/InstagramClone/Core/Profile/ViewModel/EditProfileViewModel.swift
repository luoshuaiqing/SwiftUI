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
    
    private func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let image = UIImage(data: data) else { return }
        profileImage = Image(uiImage: image)
    }
}
