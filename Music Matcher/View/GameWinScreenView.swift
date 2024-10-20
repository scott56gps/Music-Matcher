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
            VStack {
                Text("You Won!")
                Text("Score: \(store.state.moves)")
            }
            .padding()
            Button("Go Again") {
                store.dispatch(.endGame)
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center
        )
        .background(Gradient(colors: [Color.pink, Color.purple, Color(red: 0, green: 0, blue: 0.847)]))
    }
}

struct GameWinScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameWinScreenView()
    }
}
