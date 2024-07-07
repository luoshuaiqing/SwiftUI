//
//  PageModel.swift
//  Pinch
//
//  Created by Shuaiqing Luo on 7/7/24.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        "thumb-" + imageName
    }
}
