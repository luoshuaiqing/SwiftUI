//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/12/24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
