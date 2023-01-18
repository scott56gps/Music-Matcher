//
//  Note.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/2/23.
//

import SwiftUI

enum Note: String {
    case A4
    case B4
    case C4
    case C5
    case D4
    case E4
    case F4
    case G4
    
    var image: Image {
        Image(rawValue)
    }
}
