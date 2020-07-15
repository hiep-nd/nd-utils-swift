//
//  String+NDUtils_Swift.swift
//  NDUtils_Swift
//
//  Created by Nguyen Duc Hiep on 6/25/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

import NDUtils

extension String {
  @inlinable
  public static func nd_(named: String) -> Self {
    return Self(NSString.nd_(named: named))
  }
}
