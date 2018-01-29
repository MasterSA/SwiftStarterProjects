//
//  Calculator.swift
//  CalculatorUpgraded
//
//  Created by Azizur Rahman on 2017-12-19.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import Foundation

struct Calculator {
    
    func doNormalOperation(number1: Float, number2: Float, operatorType: String) -> Float {
        switch operatorType {
            case "+" :
                return number1 + number2
            case "-" :
                return number1 + number2
            case "*" :
                return number1 * number2
            default :
            return number1 / number2
            
        }
    }
    
}
