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
    case .startGame(let ofType):
        mutatingState.gameState = .started
        mutatingState.selectedCards = []
        mutatingState.moves = 0
        
        switch ofType {
        case .music:
            mutatingState.cards = MusicCardGenerator.generateCards()
        }
    case .endGame:
        mutatingState.gameState = .title
    case .changeCardCollection(let toType):
        switch toType {
        case .music:
            mutatingState.cards = MusicCardGenerator.generateCards()
        }
    case .flipCard(let id):
        guard mutatingState.selectedCards.count < 2 else {
            // We cannot flip more than 2 cards
            break
        }
        guard !mutatingState.selectedCards.contains(where: { $0.id == id }) else {
            // We cannot flip a card that is already selected
            break
        }
        
        var cards = mutatingState.cards
        var optionalSelectedInnerIndex: Array.Index?
        guard let selectedGroupIndex = cards.firstIndex(where: {
            optionalSelectedInnerIndex = $0.firstIndex(where: { $0.id == id })
            return optionalSelectedInnerIndex != nil
        }) else {
            // The card we're looking for must be found within the cards
            break
        }
        guard let selectedInnerIndex = optionalSelectedInnerIndex else {
            // The selected inner index should have been found at this point
            break
        }
        
        let selectedCard = cards[selectedGroupIndex][selectedInnerIndex]
        let flippedCard = Card(id: selectedCard.id, isFlipped: true, content: selectedCard.content)
        cards[selectedGroupIndex][selectedInnerIndex] = flippedCard
        
        mutatingState.selectedCards.append(selectedCard)
        mutatingState.cards = cards
        mutatingState.moves += 1
    }
    
    // Submit the state with the mutated game state
    return mutatingState
}
