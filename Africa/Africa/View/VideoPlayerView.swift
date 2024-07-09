//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/9/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "Video/cheetah", withExtension: "mp4")!))
    }
}

#Preview {
    VideoPlayerView()
}
