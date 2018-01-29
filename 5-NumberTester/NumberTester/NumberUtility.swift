//
//  NumberUtility.swift
//  NumberTester
//
//  Created by Azizur Rahman on 2017-11-29.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import Foundation

class NumberTester {
    
    func isEvenOrOdd(number: Int) -> Bool {
        if number % 2 == 0 {
            
            return true
            
        } else {
            
            return false
            
        }
        
    }
    
    func divisibleBy5(number: Int) -> Bool {
        if number % 5 == 0 {
            
            return true
            
        } else {
            
            return false
            
        }
        
    }
    
}
