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
        Text(note.rawValue)
    }
}
