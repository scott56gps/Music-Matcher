//
//  CardFrontContentView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/7/23.
//

import SwiftUI

struct CardFrontContentView: View {
    var noteName: String
    
    init(_ noteName: String) {
        self.noteName = noteName
    }
    
    var body: some View {
        Text(noteName)
            .font(.title)
    }
}

struct CardFrontContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardFrontContentView("A")
    }
}
