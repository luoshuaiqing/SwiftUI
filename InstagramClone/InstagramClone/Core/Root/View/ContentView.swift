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
                    .environment(RegistrationViewModel())
            } else {
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
