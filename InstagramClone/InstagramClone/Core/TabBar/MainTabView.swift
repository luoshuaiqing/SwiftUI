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
            
            SearchView()
                .onAppear(perform: {
                    selectedIndex = 1
                })
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            UploadPostView()
                .onAppear(perform: {
                    selectedIndex = 2
                })
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            Text("Notifications")
                .onAppear(perform: {
                    selectedIndex = 3
                })
                .tabItem {
                    Image(systemName: "heart")
                }
            
            CurrentUserProfileView(user: User.MOCK_USERS[0])
                .onAppear(perform: {
                    selectedIndex = 4
                })
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
