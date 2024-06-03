//
//  CoffeeModel.swift
//  HelloCoffee
//
//  Created by Shuaiqing Luo on 6/2/24.
//

import Foundation

@MainActor
class CoffeeModel: ObservableObject {

    let webService: Webservice
    @Published private(set) var orders: [Order] = []
    
    init(webService: Webservice) {
        self.webService = webService
    }
    
    func populateOrders() async throws {
        orders = try await webService.getOrders()
    }
}
