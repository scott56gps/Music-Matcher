//
//  CardGridView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/10/23.
//

import SwiftUI

struct CardGridView<CardContent: View>: View {
    @EnvironmentObject var store: MusicMatcherStore
    var cards: [[Card<CardContent>]]
    
    var body: some View {
        Grid(alignment: .center, verticalSpacing: 10) {
            ForEach(0..<cards.count, id: \.self) { groupIndex in
             GridRow {
                 ForEach(cards[groupIndex]) { card in
                     CardView(card: card)
                         .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .onTapGesture {
                        print("Card Pressed")
                        store.dispatch(.flipCard(card.id))
                    }
                }
            }
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            }
        }
    }
}

struct CardGridView_Previews: PreviewProvider {
    static var previews: some View {
        CardGridView<MusicCardContent>(cards: MusicCardGenerator.generateCards())
    }
}
