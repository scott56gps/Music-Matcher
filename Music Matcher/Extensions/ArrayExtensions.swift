//
//  ArrayExtensions.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/10/23.
//

import Foundation

extension Array {
    /// Copied from https://stackoverflow.com/questions/59823900/turn-1d-array-into-2d-array-in-swift
    func overlay<T>(_ array: [[T]]) -> [[Element]] {
        var iter = self.makeIterator()
        return array.map { $0.compactMap { _ in iter.next() }}
    }
    
    /// Convert this array into a 2-dimensional square array, that is a 2-dimensional array with
    /// an outer index of the size of this array's square root.
    /// Returns nil if this array's count is not a perfect square
    func to2dSquare() -> [[Element]]? {
        guard self.count.isPerfectSquare() else {
            return nil
        }
        let sqrt = Int(sqrt(Double(self.count)))
        
        return (0..<sqrt).map { outerIndex in
            (0..<sqrt).reduce(into: []) { (accum, num) in
                accum.append(self[num + ((count / sqrt) * outerIndex)])
            }}
    }
}
