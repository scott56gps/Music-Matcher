//
//  Music_MatcherApp.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import SwiftUI

@main
struct Music_MatcherApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                // We supply our application with a store having an initial state value
                .environmentObject(MusicMatcherStore(initial: MusicMatcherState()))
        }
    }
}
