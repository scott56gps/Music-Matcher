//
//  MusicCardContent.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/2/23.
//

import SwiftUI

struct MusicCardContent: View {
    let note: Note
    
    init(note: Note) {
        self.note = note
    }
    
    var body: some View {
        Image(note.rawValue)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct MusicCardContent_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(isFlipped: true, content: MusicCardContent(note: .C4)))
    }
}

