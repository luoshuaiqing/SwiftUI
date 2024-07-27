//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Shuaiqing Luo on 7/26/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onAppear(perform: {
                    selectedIndex = 0
                })
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            SearchView()
                .onAppear(perform: {
                    selectedIndex = 1
                })
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            UploadPostView(tabIndex: $selectedIndex)
                .onAppear(perform: {
                    selectedIndex = 2
                })
                .tabItem {
                    Image(systemName: "plus.square")
                }
                .tag(2)
            
            Text("Notifications")
                .onAppear(perform: {
                    selectedIndex = 3
                })
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(3)
            
            CurrentUserProfileView(user: User.MOCK_USERS[0])
                .onAppear(perform: {
                    selectedIndex = 4
                })
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(4)
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
