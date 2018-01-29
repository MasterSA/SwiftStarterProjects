//
//  MathUtils.swift
//  algorithms
//
//  Created by Azizur Rahman on 2018-01-05.
//  Copyright © 2018 Aariz Rahman. All rights reserved.
//

import Foundation

struct Point {
    let x : Int
    let y : Int
}

extension Point: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}
