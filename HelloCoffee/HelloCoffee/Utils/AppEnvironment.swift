//
//  AppEnvironment.swift
//  HelloCoffee
//
//  Created by Shuaiqing Luo on 6/2/24.
//

import Foundation

enum Endpoints {
    case allOrders
    
    var path: String {
        switch self {
        case .allOrders:
            return "/test/orders"
        }
    }
}

enum AppEnvironment: String {
    case dev
    case test
    
    var baseURL: URL {
        switch self {
        case .dev:
            return URL(string: "https://island-bramble.glitch.me")!
        case .test:
            return URL(string: "https://island-bramble.glitch.me")!
        }
    }
}
