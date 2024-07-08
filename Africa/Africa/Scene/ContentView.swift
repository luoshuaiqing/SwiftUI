//
//  ContentView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

#Preview {
    ContentView()
}
