//
//  CardGridView.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/10/23.
//

import SwiftUI

struct CardGridView: View {
    var body: some View {
        Grid(alignment: .center, verticalSpacing: 10) {
            ForEach(0..<4) { bigIndex in
             GridRow {
                ForEach(0..<4) { index in
                 CardFrontContentView("Hola\(index)")
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
        CardGridView()
    }
}
