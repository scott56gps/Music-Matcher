//
//  AudioViewable.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/26/23.
//

import Foundation
import SwiftUI
import AVFoundation

protocol AudioViewable: View {
    associatedtype EnumeratedViewable: RawRepresentable where EnumeratedViewable.RawValue == String
    var player: AVAudioPlayer? { get }
    var sound: EnumeratedViewable { get }
}

extension AudioViewable {
    var player: AVAudioPlayer? {
        guard let soundURL = Bundle.main.url(forResource: sound.rawValue, withExtension: "mp3") else {
            return nil
        }
        
        let player = try? AVAudioPlayer(contentsOf: soundURL)
        player?.prepareToPlay()
        return player
    }
}
