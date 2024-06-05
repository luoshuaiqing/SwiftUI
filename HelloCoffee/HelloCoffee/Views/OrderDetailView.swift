//
//  OrderDetailView.swift
//  HelloCoffee
//
//  Created by Shuaiqing Luo on 6/5/24.
//

import SwiftUI

struct OrderDetailView: View {
    
    let orderId: Int
    @EnvironmentObject private var model: CoffeeModel
    @State private var isPresented: Bool = false
    @Environment(\.dismiss) private var dismiss
    
    private func deleteOrder() async {
        do {
            try await model.deleteOrder(orderId)
            dismiss()
        } catch {
            print(error)
        }
    }
    
    var body: some View {
        VStack {
            if let order = model.orderById(orderId) {
                VStack(alignment: .leading, spacing: 10) {
                    Text(order.coffeeName)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(order.size.rawValue).opacity(0.5)
                    Text(order.total as NSNumber, formatter: NumberFormatter.currency)
                    
                    HStack {
                        Spacer()
                        Button("Delete Order", role: .destructive) {
                            Task {
                                await deleteOrder()
                            }
                        }
                        Button("Edit Order") {
                            isPresented = true
                        }
                        Spacer()
                    }
                }.sheet(isPresented: $isPresented, content: {
                    AddCoffeeView(order: order)
                })
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    var config = Configuration()
    return OrderDetailView(orderId: 1).environmentObject(CoffeeModel(webService: WebService(baseURL: config.environment.baseURL)))
}
