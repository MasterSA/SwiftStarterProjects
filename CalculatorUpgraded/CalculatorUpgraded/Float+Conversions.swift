//
//  Float+Conversions.swift
//  CalculatorUpgraded
//
//  Created by Azizur Rahman on 2017-12-20.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import Foundation
import UIKit

extension Float {
    var cleanValue: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}


