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
        CardGridView(cards: store.state.cards)
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
    }
}
