//
//  ProductModel.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/12/24.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
