//
//  CTAButton.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 12/30/24.
//
import SwiftUI

struct CTAButton: View {
    var label: String
    var backgroundColor: Color = .blue
    var action: () -> Void
    
    init(_ label: String, _ backgroundColor: Color, action: @escaping () -> Void) {
        self.label = label
        self.backgroundColor = backgroundColor
        self.action = action
    }
    
    init(_ label: String, action: @escaping () -> Void) {
        self.label = label
        self.action = action
    }

    var body: some View {
        Button(
            action: action,
            label: {
                Text(label)
                    .font(.title)
                    .foregroundStyle(Color.black)
                    .padding(12)
                    .background(backgroundColor, in: RoundedRectangle(cornerRadius: 12))
            })
    }
}
