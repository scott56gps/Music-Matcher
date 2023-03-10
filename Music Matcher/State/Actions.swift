//
//  Actions.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import Foundation

enum MusicMatcherAction {
    case startGame(CardCollectionType)
    case endGame
    case winGame
    case changeCardCollection(CardCollectionType)
    case flipCard(UUID)
    case clearSelectedCards
    case unFlipSelectedCards
}
