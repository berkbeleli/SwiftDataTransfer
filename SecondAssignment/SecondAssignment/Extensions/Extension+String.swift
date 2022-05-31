//
//  Extension+String.swift
//  SecondAssignment
//
//  Created by Berk Beleli on 2022-05-31.
//

import Foundation

extension String {
  /// get index in the string
  func index(from: Int) -> Index {
    return self.index(startIndex, offsetBy: from)
  }
  /// Returns the provided range's string inside of another string value
  func substring(with r: Range<Int>) -> String {
    let startIndex = index(from: r.lowerBound)
    let endIndex = index(from: r.upperBound)
    return String(self[startIndex..<endIndex])
  }
}
