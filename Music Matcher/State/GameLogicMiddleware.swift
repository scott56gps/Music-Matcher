//
//  GameLogicMiddleware.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/17/23.
//

import Foundation
import Combine

let gameLogic: Middleware<MusicMatcherState, MusicMatcherAction> = { state, action in
    switch action {
    case .flipCard:
        let cards = state.cards.flatMap { $0 }
        let flippedCards = cards.filter { $0.isFlipped }
        if flippedCards.count == cards.count {
            return Just(.winGame)
                .delay(for: 1, scheduler: DispatchQueue.main)
                .eraseToAnyPublisher()
        }
        
        let selectedCards = state.selectedCards
        
        if selectedCards.count == 2 {
            return selectedCards[0].content == selectedCards[1].content ?
            Just(.clearSelectedCards)
                .eraseToAnyPublisher() :
            Just(.unFlipSelectedCards)
                .delay(for: 0.75, scheduler: DispatchQueue.main)
                .eraseToAnyPublisher()
        }
        
    default:
        break
    }
            
    return Empty().eraseToAnyPublisher()
}
