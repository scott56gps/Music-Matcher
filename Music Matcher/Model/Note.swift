//
//  Note.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/2/23.
//

import SwiftUI

enum Note: String {
    case A
    case B
    case C
    case D
    case E
    case F
    case G
    
    var image: Image {
        Image(rawValue)
    }
}
