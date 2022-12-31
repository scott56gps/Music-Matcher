//
//  Store.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import Foundation
import SwiftUI

typealias MusicMatcherStore = Store<MusicMatcherState, MusicMatcherAction>

/**
 This is the *place* where the state is accessed.
 In order to access the store, one must specify the current state and an action.
 */
class Store<State, Action>: ObservableObject {
    @Published private(set) var state: State
    private let reducer: Reducer<State, Action>
    
    init(initial: State, reducer: @escaping Reducer<State, Action>) {
        self.state = initial
        self.reducer = reducer
    }
}
