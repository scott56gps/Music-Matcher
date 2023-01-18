//
//  Middleware.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/17/23.
//

import Combine

typealias Middleware<State, Action> = (State, Action) -> AnyPublisher<Action, Never>
