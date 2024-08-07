//
//  AudioPlayer.swift
//  Restart
//
//  Created by Shuaiqing Luo on 7/6/24.
//

import Foundation
import AVFoundation

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            let audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer.play()
        } catch {
            print("Could not play the sound file. error: \(error.localizedDescription)")
        }
    }
}
