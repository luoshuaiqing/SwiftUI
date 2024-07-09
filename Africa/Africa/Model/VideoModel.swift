//
//  VideoModel.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/9/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
