//
//  SymbolModifier.swift
//  HoneyMoon
//
//  Created by Shuaiqing Luo on 7/26/24.
//

import SwiftUI

struct SymbolModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .font(.system(size: 128))
            .shadow(color: .black.opacity(0.2), radius: 12)
    }
}
