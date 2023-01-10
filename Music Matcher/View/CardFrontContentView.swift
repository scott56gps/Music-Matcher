//
//  CardFrontContentView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/7/23.
//

import SwiftUI

struct CardFrontContentView<CardContent: View>: View {
    var content: CardContent
    
    var body: some View {
        content
    }
}

struct CardFrontContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardFrontContentView(content: Text("A")
            .font(.title))
    }
}
