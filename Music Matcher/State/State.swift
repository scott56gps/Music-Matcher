//
//  State.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import Foundation

/**
 This is the actual state of the entire application.  This state must be
 accessed in a Store.
 */
struct MusicMatcherState {
    var gameState: GameState = .title
    var cards: [[Card]] = MusicCardGenerator.generateCards()
}
