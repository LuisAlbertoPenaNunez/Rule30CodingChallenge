//
//  Rule30ExerciseTests.swift
//  Rule30ExerciseTests
//
//  Created by Luis Alberto Pena Nunez on 12/22/22.
//

import XCTest

final class Rule30ExerciseTests: XCTestCase {

    var rule30Service: Rule30Service!
    
    override func setUpWithError() throws {
        rule30Service = Rule30ServiceImpl()
    }

    override func tearDownWithError() throws {
        rule30Service = nil
    }

    func test_output_not_empty() throws {
        
        let output = rule30Service.generateRandomOutput()
        
        //Assert
        XCTAssertNotNil(output)
    }
    
    func test_length_is_greather_than_200() throws {

        let output = rule30Service.generateRandomOutput()
        
        //Assert
        XCTAssertTrue(output.count >= 2112)
    }
}
