//
//  Store.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import SwiftUI
import Combine

typealias MusicMatcherStore = Store<MusicMatcherState, MusicMatcherAction>

/**
 This is the *place* where the state is accessed.
 In order to access the store, one must specify the current state and an action.
 */
class Store<State, Action>: ObservableObject {
    @Published private(set) var state: State
    private let reducer: Reducer<State, Action>
    private let queue = DispatchQueue(label: "nicholes.prod.Music-Matcher", qos: .userInitiated)
    private let middlewares: [Middleware<State, Action>]
    private var subscriptions: Set<AnyCancellable> = []
    
    init(initial: State, reducer: @escaping Reducer<State, Action>, middlewares: [Middleware<State, Action>] = []) {
        self.state = initial
        self.reducer = reducer
        self.middlewares = middlewares
    }
    
    /**
     Synchronously apply an action to the Store's state.
     */
    func dispatch(_ action: Action) {
        queue.sync {
            // Essentially, here we update ourself
            self.dispatch(self.state, action)
        }
    }
    
    /**
     Update internal Store state with a new state obtained by applying an action.
     */
    private func dispatch(_ currentState: State, _ action: Action) {
        // Get a new state by applying the reducer to the current state for the given action
        let newState = reducer(currentState, action)
        
        middlewares.forEach { middleware in
            middleware(newState, action)
                .receive(on: DispatchQueue.main)
                .sink(receiveValue: dispatch)
                .store(in: &subscriptions)
        }
        
        // We now set our internal Store state to our new state
        state = newState
    }
}
