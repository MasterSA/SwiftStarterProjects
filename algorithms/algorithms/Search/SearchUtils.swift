//
//  SearchUtils.swift
//  algorithms
//
//  Created by Azizur Rahman on 2018-01-04.
//  Copyright © 2018 Aariz Rahman. All rights reserved.
//

import Foundation


class SearchUtils
{

    
//func linearSearch(numbers:[Int], item : Int )->Int? {
//
//    for index in 0..<numbers.count {
//        if numbers[index] == item {
//            return index
//        }
//    }
//    return nil
//
//}
//
//    // Double
//
//    func linearSearch(numbers:[Double], item : Double )->Int? {
//
//        for index in 0..<numbers.count {
//            if numbers[index] == item {
//                return index
//            }
//        }
//        return nil
//
//    }
//
//
//
//    // Double
//
//    func linearSearch(numbers:[Character], item : Character )->Int? {
//
//        for index in 0..<numbers.count {
//            if numbers[index] == item {
//                return index
//            }
//        }
//        return nil
//
//    }
//
//
    
    
    
    func findIndex<AnyType : Equatable>(of valueToFind: AnyType, in array:[AnyType]) -> Int? {
        for (index, value) in array.enumerated() {
            if value == valueToFind {
                return index
            }
        }
        return nil
    }

}
