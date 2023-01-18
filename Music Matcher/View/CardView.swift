//
//  CardView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/17/23.
//

import SwiftUI

struct CardView<CardContent: View>: View {
    var card: Card<CardContent>
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
            
            if card.isFlipped {
                CardFrontContentView(content: card.content)
                    .padding()
            } else {
                CardBackContentView()
                    .padding()
            }
        }
        .rotation3DEffect(
            card.isFlipped ?
            Angle(degrees: 180) :
            Angle(degrees: 0), axis: (x: 0.0, y: 10.0, z: 0.0))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(isFlipped: true, content: MusicCardContent(note: .C4)))
    }
}
