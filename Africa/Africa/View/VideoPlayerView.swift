//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/9/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    let videoSelected: String
    let videoTitle: String
    
    var body: some View {
        VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
    }
}

#Preview {
    VideoPlayerView(videoSelected: "Video/lion", videoTitle: "Lion")
}
