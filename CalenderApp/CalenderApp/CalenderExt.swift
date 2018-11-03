//
//  CalenderExt.swift
//  CalenderApp
//
//  Created by Azizur Rahman on 2018-11-01.
//  Copyright © 2018 BigDo. All rights reserved.
//

import Foundation

extension Calendar {
    
    func weekDayName(of number: Int) -> String {
        guard 1...7 ~= number else {
            return ""
        }
        var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        
        return days[number]
    }
    
    func weekDayNumber(of day: String) -> Int {
        
        let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        
        guard days.contains(day) else {
            return 0
        }
        
        switch day {
        case days[0]:
            return 1
        case days[1]:
            return 2
        case days[2]:
            return 3
        case days[3]:
            return 4
        case days[4]:
            return 5
        case days[5]:
            return 6
        default:
            return 7
        }
    }
    
}
