//
//  VideoPlayerUtility.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/9/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if let url = Bundle.main
        .url(forResource: fileName, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url: url)
        videoPlayer!.play()
    }
    return videoPlayer!
}
