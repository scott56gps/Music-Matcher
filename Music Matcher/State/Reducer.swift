//
//  Reducer.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import Foundation

typealias Reducer<State, Action> = (State, Action) -> State

let musicMatcherReducer: Reducer<MusicMatcherState, MusicMatcherAction> = { state, action in
    return state
}
