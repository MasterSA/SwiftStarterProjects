//
//  ShowEvenOrOdd.swift
//  ShowEvenOrOdd
//
//  Created by Azizur Rahman on 2017-12-09.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import Foundation

class ShowEvenOrOdd{
    
    func showEvens(numbers: [Int]) -> [Int] {
        var evens = [Int]()
        
        for index in 0..<numbers.count {
            if numbers[index] % 2 == 0 {
                evens.append(numbers[index])
                
            }
            
        }
        
        return evens
        
    }
    
    func showOdds(numbers: [Int]) -> [Int] {
        var odds = [Int]()
        
        for index in 0..<numbers.count {
            if numbers[index] % 2 == 1 {
                odds.append(numbers[index])
                
            }
            
        }
        
        return odds
        
    }
    
}
