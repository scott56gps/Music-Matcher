//
//  Music_MatcherApp.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import SwiftUI
import AVFoundation

@main
struct Music_MatcherApp: App {
    init() {
        let session = AVAudioSession.sharedInstance()
        try? session.setCategory(.playback)
        try? session.setActive(true)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                // We supply our application with a store having an initial state value
                .environmentObject(MusicMatcherStore(initial: MusicMatcherState(),
                                                     reducer: musicMatcherReducer,
                                                     middlewares: [
                                                        gameLogic,
                                                        audioPlayerMiddleware(using: NotePlayerDictionaryGenerator.generate(for: Note.allCases))
                                                     ]))
        }
    }
}
