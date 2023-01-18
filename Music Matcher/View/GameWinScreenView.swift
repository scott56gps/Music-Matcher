//
//  GameWinScreenView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import SwiftUI

struct GameWinScreenView: View {
    @EnvironmentObject var store: MusicMatcherStore
    
    var body: some View {
        VStack {
            Text("You Won!")
            Button("Go Again") {
                store.dispatch(.endGame)
            }
        }
    }
}

struct GameWinScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameWinScreenView()
    }
}
