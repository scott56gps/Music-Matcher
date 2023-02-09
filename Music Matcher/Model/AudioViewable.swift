//
//  AudioViewable.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/26/23.
//

import Foundation
import SwiftUI
import AVFoundation

protocol AudioViewable: View {
    associatedtype EnumeratedViewable: RawRepresentable where EnumeratedViewable.RawValue == String
    var sound: EnumeratedViewable { get }
}
