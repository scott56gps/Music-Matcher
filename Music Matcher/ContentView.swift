//
//  ContentView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: MusicMatcherStore
    
    var body: some View {
        switch store.state.gameState {
        case .title: TitleScreenView()
        case .started: GameScreenView()
        case .won: GameWinScreenView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MusicMatcherStore(initial: MusicMatcherState(), reducer: musicMatcherReducer))
    }
}
