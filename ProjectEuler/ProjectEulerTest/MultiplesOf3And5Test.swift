//
//  MultiplesOf3And5Test.swift
//  ProjectEulerTest
//
//  Created by Azizur Rahman on 2018-01-05.
//  Copyright © 2018 Aariz Rahman. All rights reserved.
//

import XCTest
@testable import ProjectEuler

class MultiplesOf3And5Test: XCTestCase {
    
    var multiplesOf3And5 = MultiplesOf3And5()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    
    func sumOfMultiples() {
        let n = 10
        let result = multiplesOf3And5.sumOfMultiples(terminalNumber: n)
        let expected = 23
        XCTAssert(expected == result)
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
