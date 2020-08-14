//
//  CATransaction+NDUtils.swift
//  NDUtils_Swift
//
//  Created by Nguyen Duc Hiep on 8/10/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

import NDUtils

public func nd_attach<Result>(
  toAnimation animation: () -> Result, completion: @escaping () -> Void
) -> Result {
  var result: Result!
  NDUtils.nd_attach(
    toAnimation: {
      result = animation()
    }, completion: completion)
  return result
}
