//
//  CardTransition.swift
//  HoneyMoon
//
//  Created by Shuaiqing Luo on 7/26/24.
//

import SwiftUI

extension AnyTransition {
    static var trailingBottom: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .identity,
            removal: .move(edge: .trailing).combined(with: .move(edge: .bottom))
        )
    }
    
    static var leadingBottom: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .identity,
            removal: .move(edge: .leading).combined(with: .move(edge: .bottom))
        )
    }
}
