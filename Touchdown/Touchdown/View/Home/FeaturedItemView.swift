//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/11/24.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeaturedItemView(player: players[0])
        .padding()
}
