//
//  Array+NDUtils_Swift.swift
//  NDUtils_Swift
//
//  Created by Nguyen Duc Hiep on 8/10/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

import Foundation

extension Array {
  public func subtract<Element2>(
    _ s: [Element2], _ comparer: (Element, Element2) -> Bool
  ) -> [Element] {
    return self.filter { lv in !s.contains(where: { comparer(lv, $0) }) }
  }

  public func lowerBound<Element2>(
    _ value: Element2, _ comparer: (Element, Element2) -> Bool
  ) -> Index {
    var first: Index = 0
    var count = self.count  // last - first
    while count > 0 {
      let step = count / 2
      let i = first + step
      if comparer(self[i], value) {
        first = i + 1
        count -= (step + 1)
      } else {
        count = step
      }
    }
    return first
  }

  public func upperBound<Element2>(
    _ value: Element2, _ comparer: (Element2, Element) -> Bool
  ) -> Index {
    var first: Index = 0
    var count = self.count  // last - first
    while count > 0 {
      let step = count / 2
      let i = first + step
      if !comparer(value, self[i]) {
        first = i + 1
        count -= (step + 1)
      } else {
        count = step
      }
    }
    return first
  }
}
