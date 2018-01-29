//
//  MultiplesOf3And5.swift
//  ProjectEuler
//
//  Created by Aariz Rahman on 2018-01-05.
//  Copyright © 2018 Aariz Rahman. All rights reserved.
//

import Foundation

class MultiplesOf3And5 {
    
    func generateMultiples(terminalNumber n : Int) -> [Int] {
        var multiples = [Int]()
        for number in 1..<n {
            if number % 3 == 0 || number % 5 == 0 {
                multiples.append(number)
            }
        }
        return multiples
    }
    
    func sumOfMultiples(terminalNumber n : Int) -> Int {
        let multiples = generateMultiples(terminalNumber: n)
        var sum = 0
        for number in multiples {
            sum = sum + number
        }
        
        return sum
    }
    
}
