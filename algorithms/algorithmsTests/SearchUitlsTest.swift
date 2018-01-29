//
//  SearchUitlsTest.swift
//  algorithmsTests
//
//  Created by Azizur Rahman on 2018-01-04.
//  Copyright © 2018 Aariz Rahman. All rights reserved.
//

import XCTest

@testable import algorithms

class SearchUitlsTest: XCTestCase {
    
    let searchUtils = SearchUtils()
 
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLinearSearchItemFoundInt() {
   
        let item = 3
        let nums = [2,3,4,7,5,11,33,44]
        let expected = 1
        let indexResult = searchUtils.findIndex(of: item, in: nums)
        XCTAssert( indexResult == expected )
        
    }
    
    func testLinearSearchItemFoundFloat() {
        let item = 3.0
        let nums = [2.0,3.0,4.55,7.5,5.5,11.00,33.55,44.55]
        let expected = 1
        let indexResult = searchUtils.findIndex(of: item, in : nums)
        XCTAssert( indexResult == expected )
        
    }
    
    
    func testLinearSearchItemFoundCharacter() {
        let item: Character = "A"
        let characters: [Character] = ["A","B","C"]
        let expected = 0
       let indexResult = searchUtils.findIndex(of: item, in : characters)
        XCTAssert( indexResult == expected )
        
    }
    
    
    func testLinearSearchItemNotFound() {
        let item = 55
        let nums = [2,3,4,7,5,11,33,44]
        let expected: Int? = nil
        let indexResult = searchUtils.findIndex(of: item, in : nums)
    
        XCTAssert( indexResult == expected )
        
    }
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
