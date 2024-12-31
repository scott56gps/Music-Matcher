//
//  CTAButton.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/30/24.
//
import SwiftUI

struct CTAButton: View {
    var action: () -> Void
    var label: Text
    var backgroundColor: Color = .blue

    var body: some View {
        Button(
            action: action,
            label: {
                label
                    .font(.title)
                    .foregroundStyle(Color.black)
                    .padding(12)
                    .background(backgroundColor, in: RoundedRectangle(cornerRadius: 12))
            })
    }
}
