//
//  ContentView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
