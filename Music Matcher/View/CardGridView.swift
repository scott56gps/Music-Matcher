//
//  CardGridView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/10/23.
//

import SwiftUI

struct CardGridView<CardContent: View>: View {
    var cards: [[Card<CardContent>]]
    
    var body: some View {
        Grid(alignment: .center, verticalSpacing: 10) {
            ForEach(0..<cards.count, id: \.self) { groupIndex in
             GridRow {
                 ForEach(cards[groupIndex]) { card in
                     CardFrontContentView(content: card.content)
                    .frame(width: 100, height: 150)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke())
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
