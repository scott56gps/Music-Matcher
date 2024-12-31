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
            VStack {
                Spacer()
                Text("Music Matcher")
                    .font(.system(size: 50))
                    .padding()
                Spacer()
            }
            VStack {
                CTAButton(
                    action: {
                        withAnimation {
                            // We ask the store to update the game state to startGame
                            // TODO: Create a way to start games of different types
                            store.dispatch(.startGame(.music))
                        }
                    }, label: Text("Start!"))
                Spacer()

            }
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Gradient(colors: [.teal, .cyan, .green]).opacity(0.6))
    }
}

struct TitleScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TitleScreenView()
    }
}
