//
//  MusicCardGenerator.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/3/23.
//

import Foundation

struct MusicCardGenerator {
    static func generateCards() -> [[Card<NoteCardContent>]] {
        return [Card(content: NoteCardContent(note: .A4)), Card(content: NoteCardContent(note: .B4)), Card(content: NoteCardContent(note: .C4)), Card(content: NoteCardContent(note: .D4)), Card(content: NoteCardContent(note: .E4)), Card(content: NoteCardContent(note: .F4)), Card(content: NoteCardContent(note: .G4)), Card(content: NoteCardContent(note: .C5)), Card(content: NoteCardContent(note: .A4)), Card(content: NoteCardContent(note: .B4)), Card(content: NoteCardContent(note: .C4)), Card(content: NoteCardContent(note: .D4)), Card(content: NoteCardContent(note: .E4)), Card(content: NoteCardContent(note: .F4)), Card(content: NoteCardContent(note: .G4)), Card(content: NoteCardContent(note: .C5))].shuffled().to2dSquare()!
    }
    
    static func generateEmpty2dCards() -> [[Card<NoteCardContent>]] {
        return [[]]
    }
    
    static func generateEmptyCards() -> [Card<NoteCardContent>] {
        return []
    }
}
