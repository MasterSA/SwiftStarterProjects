//
//  DateCalender.swift
//  CalenderApp
//
//  Created by Aariz Rahman on 2018-11-01.
//  Copyright © 2018 BigDo. All rights reserved.
//

import Foundation

class DateCalender {
    var month: Int
    var year: Int
    var day: Int
    private let calender = Calendar.current
    
    func beginningDayOfMonth() -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return calender.component(.weekday, from: formatter.date(from: "\(year)-\(String(month).count == 1 ? "0\(month)" : String(month))-01" )!)
        
    }
    
    init(_ date: Date = Date()) {
        day = calender.component(.day, from: date)
        month = calender.component(.month, from: date)
        year = calender.component(.year, from: date)
        
    }
}
