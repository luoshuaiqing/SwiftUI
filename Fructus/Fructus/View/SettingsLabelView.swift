//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
}
