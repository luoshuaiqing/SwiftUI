//
//  ContentView.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(Shop.self) var shop
    
    var body: some View {
        if !shop.showingProduct, shop.selectedProduct == nil {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding()
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(minHeight: 256)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        withAnimation(.easeOut(duration: 0.75)) {
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                    }
                            }
                        }
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }
            .background(colorBackground)
        } else {
            ProductDetailView()
        }
    }
}

#Preview {
    ContentView()
        .environment(Shop())
}
