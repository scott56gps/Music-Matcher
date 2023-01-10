//
//  IntExtensions.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/10/23.
//

import Foundation

extension Int {
    func isPerfectSquare() -> Bool {
        let sqrt = Int(sqrt(Double(self)))
        return sqrt * sqrt == self
    }
}
