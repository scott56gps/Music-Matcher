//
//  NotePlayerDictionary.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/26/23.
//

import Foundation
import AVFoundation

struct NotePlayerDictionaryGenerator {
    static func generate(for notes: [Note]) -> [Note: AVAudioPlayer?] {
        return notes.reduce(into: [Note: AVAudioPlayer?]()) { (accum, note) in
            accum[note] = createAudioPlayer(for: note)
        }
    }
    
    private static func createAudioPlayer(for note: Note) -> AVAudioPlayer? {
        guard let soundURL = Bundle.main.url(forResource: note.rawValue, withExtension: "mp3") else {
        return nil
        }
        
        let player = try? AVAudioPlayer(contentsOf: soundURL)
        player?.prepareToPlay()
        return player
    }
}



