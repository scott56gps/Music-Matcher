//
//  Store.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import Foundation
import SwiftUI

typealias MusicMatcherStore = Store<MusicMatcherState>

/**
 This is the *place* where the state is accessed.
 */
class Store<State>: ObservableObject {
    @Published private(set) var state: State
    
    init(initial: State) {
        self.state = initial
    }
}
