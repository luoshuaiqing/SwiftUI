//
//  VideoListView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode("Data/videos.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    VideoListItemView(video: video)
                        .padding(.vertical, 8)
                }
            }
            .listStyle(.insetGrouped)
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            }
        }
    }
}

#Preview {
    VideoListView()
}
