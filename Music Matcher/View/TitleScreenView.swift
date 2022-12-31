//
//  TitleScreenView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import SwiftUI

struct TitleScreenView: View {
    // EnvironmentObject is, what I believe, an updatable pointer back to a source of truth
    @EnvironmentObject var store: MusicMatcherStore
    
    var body: some View {
        VStack {
            Text("Title Screen")
            Button("Start Game") {
                // We ask the store to update the game state to startGame
                store.dispatch(.startGame)
            }
        }
    }
}

struct TitleScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TitleScreenView()
    }
}
