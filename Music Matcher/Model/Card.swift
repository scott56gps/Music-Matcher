//
//  Card.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/2/23.
//

import Foundation

struct Card<CardContent>: Identifiable {
    let id: UUID
    let isFlipped: Bool
    let content: CardContent
    
    init(id: UUID = UUID(), isFlipped: Bool = false, content: CardContent) {
        self.id = id
        self.isFlipped = isFlipped
        self.content = content
    }
}
