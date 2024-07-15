//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/14/24.
//

import SwiftUI

struct AddToCartDetailView: View {
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
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        )
        .clipShape(.capsule)
    }
}

#Preview {
    AddToCartDetailView()
}
