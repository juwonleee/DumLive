//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by apple on 2023/07/13.
//

import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer  = {
        guard let url = Bundle.main.url(forResource: "Ding", withExtension: "wav") else { fatalError("No wav file") }
        return AVPlayer(url: url)
    }()
}
