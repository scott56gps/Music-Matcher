//
//  MusicCardContent.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/2/23.
//

import SwiftUI
import AVFoundation

struct NoteCardContent: AudioViewable, Equatable {
    typealias EnumeratedViewable = Note
    
    let sound: Note
    
    init(note: Note) {
        self.sound = note
    }
    
    var body: some View {
        Image(sound.rawValue)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct MusicCardContent_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(isFlipped: true, content: NoteCardContent(note: .C4)))
    }
}

