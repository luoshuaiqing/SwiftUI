//
//  Constant.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/11/24.
//

import SwiftUI

// MARK: - DATA

let players: [Player] = Bundle.main.decode("Data/player.json")
let categories: [Category] = Bundle.main.decode("Data/category.json")
let products: [Category] = Bundle.main.decode("Data/product.json")

// MARK: - COLOR

let colorBackground = Color.colorBackground
let colorGray = Color(.systemGray)

// MARK: - LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
