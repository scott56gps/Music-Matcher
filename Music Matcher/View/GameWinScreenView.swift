//
//  GameWinScreenView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/31/22.
//

import SwiftUI

struct GameWinScreenView: View {
    @EnvironmentObject var store: MusicMatcherStore
    
    /**
    Calculates a Color based on a given feeder and the current state.moves
     */
    func calculateColor() -> Color {
        let color = Color(red: Double(Double((store.state.moves + Int.random(in: 0..<255))) / Double(255)), green: Double(Double((store.state.moves + Int.random(in: 0..<255))) / Double(255)), blue: Double(Double((store.state.moves + Int.random(in: 0..<255))) / Double(255)))
        return color
    }
    
    var body: some View {
        VStack {
            VStack {
                Text("You Won!")
                    .font(.system(size: 50))
                Text("Score: \(store.state.moves)")
            }
            .padding()
            CTAButton("Go Again", .blue) {
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
        .background(Gradient(colors: [calculateColor(), calculateColor(), calculateColor()]))
    }
}

struct GameWinScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameWinScreenView()
    }
}
