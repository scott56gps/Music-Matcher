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
            Text("Game Screen")
            Button("Back to Title") {
                withAnimation {
                    store.dispatch(.endGame)
                }
            }
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
    }
}
