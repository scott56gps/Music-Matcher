//
//  Card.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/2/23.
//

import Foundation
import AVFoundation

struct Card<CardContent: AudioViewable>: Identifiable {
    let id: UUID
    let isFlipped: Bool
    let content: CardContent
    
    init(id: UUID = UUID(), isFlipped: Bool = false, content: CardContent) {
        self.id = id
        self.isFlipped = isFlipped
        self.content = content
    }
}
