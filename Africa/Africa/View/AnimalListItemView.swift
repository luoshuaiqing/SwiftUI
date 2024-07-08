//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct AnimalListItemView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16, content: {
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Lion")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text("The world's most social felines, lions roam the savannas and grasslands of the African continent, hunting coorperatively and raising cubs in prides.")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            })
        })
    }
}

#Preview {
    AnimalListItemView()
}
