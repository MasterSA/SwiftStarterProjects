//
//  cleanValue.swift
//  drawapptwo
//
//  Created by Azizur Rahman on 2018-01-13.
//  Copyright © 2018 BinCloud Solutions Inc. All rights reserved.
//

import Foundation
import UIKit

extension Float {
    var cleanValue: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
