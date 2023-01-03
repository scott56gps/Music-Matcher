//
//  Reducer.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import Foundation

typealias Reducer<State, Action> = (State, Action) -> State

let musicMatcherReducer: Reducer<MusicMatcherState, MusicMatcherAction> = { state, action in
    // Obtain a copy of the current state, so it may be updated
    var mutatingState = state
    
    // Depending on the action, change to a new action.
    // This is the DFA part.  We specify: "Go to this new state"
    /// This is awesome because in *one place* we determine where each state will lead to.
    switch action {
    case .startGame:
        mutatingState.gameState = .started
    case .endGame:
        mutatingState.gameState = .title
    case .changeCardCollection(let toType):
        switch toType {
        case .music:
            mutatingState.cards = MusicCardGenerator.generateCards()
        }
    }
    
    // Submit the state with a mutated game state
    return mutatingState
}
