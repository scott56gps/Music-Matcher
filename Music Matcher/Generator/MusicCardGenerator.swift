//
//  MusicCardGenerator.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/3/23.
//

import Foundation

struct MusicCardGenerator {
    static func generateCards() -> [[Card<MusicCardContent>]] {
        let content = MusicCardContent(note: .A)
        return [Card(content: content), Card(content: MusicCardContent(note: .B)),
                Card(content: MusicCardContent(note: .C)), Card(content: MusicCardContent(note: .D))].shuffled().to2dSquare()!
    }
    
    static func generateEmptyCards() -> [[Card<MusicCardContent>]] {
        return [[]]
    }
}
