//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/14/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @Environment(Shop.self) var shop
    
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(.capsule)
    }
}

#Preview {
    AddToCartDetailView()
        .environment(Shop())
}
