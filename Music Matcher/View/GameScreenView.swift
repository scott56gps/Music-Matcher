//
//  GameScreenView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import SwiftUI

struct GameScreenView: View {
    @EnvironmentObject var store: MusicMatcherStore

    var body: some View {
        VStack {
            CardGridView(cards: store.state.cards)
            Text("Moves: \(store.state.moves)")
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
        .environmentObject(MusicMatcherStore(initial: MusicMatcherState(), reducer: musicMatcherReducer))
    }
}
