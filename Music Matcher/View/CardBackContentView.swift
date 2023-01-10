//
//  CardBackContentView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/7/23.
//

import SwiftUI

struct CardBackContentView: View {
    var body: some View {
        Image("card-back")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct CardBackContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardBackContentView()
    }
}
