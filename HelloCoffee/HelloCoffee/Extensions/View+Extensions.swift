//
//  View+Extensions.swift
//  HelloCoffee
//
//  Created by Shuaiqing Luo on 6/2/24.
//

import Foundation
import SwiftUI

extension View {
    
    func centerHorizontally() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    @ViewBuilder
    func visible(_ value: Bool) -> some View {
        switch value {
        case true:
            self
        case false:
            EmptyView()
        }
    }
}
