//
//  Currency.swift
//  LiveMoneyConverter
//
//  Created by Azizur Rahman on 2018-01-30.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import Foundation

struct Currency: Decodable {
    let base: String
    let rates: [String:Double]
}
