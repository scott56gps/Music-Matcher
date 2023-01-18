//
//  MusicCardGenerator.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/3/23.
//

import Foundation

struct MusicCardGenerator {
    static func generateCards() -> [[Card<MusicCardContent>]] {
        return [Card(content: MusicCardContent(note: .A4)), Card(content: MusicCardContent(note: .B4)), Card(content: MusicCardContent(note: .C4)), Card(content: MusicCardContent(note: .D4)), Card(content: MusicCardContent(note: .E4)), Card(content: MusicCardContent(note: .F4)), Card(content: MusicCardContent(note: .G4)), Card(content: MusicCardContent(note: .C5)), Card(content: MusicCardContent(note: .A4)), Card(content: MusicCardContent(note: .B4)), Card(content: MusicCardContent(note: .C4)), Card(content: MusicCardContent(note: .D4)), Card(content: MusicCardContent(note: .E4)), Card(content: MusicCardContent(note: .F4)), Card(content: MusicCardContent(note: .G4)), Card(content: MusicCardContent(note: .C5))].shuffled().to2dSquare()!
    }
    
    static func generateEmpty2dCards() -> [[Card<MusicCardContent>]] {
        return [[]]
    }
    
    static func generateEmptyCards() -> [Card<MusicCardContent>] {
        return []
    }
}
