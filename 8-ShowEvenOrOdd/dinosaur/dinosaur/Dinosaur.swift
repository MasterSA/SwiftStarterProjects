//
//  Dinosaur.swift
//  dinosaur
//
//  Created by Azizur Rahman on 2017-12-11.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import Foundation

class Dinosaur{
    
    var typeOfTeeth : String
    
    var foodItEats : TypeOfFood {
        get {
            switch typeOfTeeth {
            case "sharp":
                return TypeOfFood.meat
            case "flat":
                return TypeOfFood.leafs
                
            default:
                return TypeOfFood.meat
                
            }
            
        }
        
    }
    
    enum TypeOfFood {
        case meat
        
        case leafs
        
        case both
        
    }
    
}
