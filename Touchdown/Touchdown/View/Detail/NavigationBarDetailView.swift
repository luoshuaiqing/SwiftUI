//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/14/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @Environment(Shop.self) var shop
    
    var body: some View {
        HStack {
            Button {
                withAnimation {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }

            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }
    }
}

#Preview {
    NavigationBarDetailView()
        .background(.gray)
        .environment(Shop())
}
