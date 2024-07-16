//
//  Extensions.swift
//  Slot Machine
//
//  Created by Shuaiqing Luo on 7/16/24.
//

import SwiftUI

extension Text {
    func scoreLabelStyle() -> Text {
        self
            .foregroundStyle(.white)
            .font(.system(size: 10, weight: .bold, design: .rounded))
    }
    
    func scoreNumberStyle() -> Text {
        self
            .foregroundStyle(.white)
            .font(.system(.title, design: .rounded))
            .fontWeight(.heavy)
    }
}
