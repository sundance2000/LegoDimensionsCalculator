//
//  FigureTests.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 04.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

import XCTest

class FigureTests: XCTestCase {
    
    func testDescription() {
        // 1. Arrange
        let name = "Test"
        let abilities = [Ability.Acrobat]
        let figure = Figure(name: name, abilities: Set(abilities))
        
        // 3. Assert
        XCTAssertEqual(String(figure), name)
    }
    
    func testHashValue() {
        // 1. Arrange
        let name = "Test"
        let abilities = [Ability.Acrobat]
        let figure = Figure(name: name, abilities: Set(abilities))
        
        // 3. Assert
        XCTAssertEqual(figure.hashValue, -4799450060579260219)
    }
    
    func testInit() {
        // 1. Arrange
        let name = "Test"
        let abilities = [Ability.Acrobat]
        
        // 2. Action
        let figure = Figure(name: name, abilities: Set(abilities))
        
        // 3. Assert
        XCTAssertEqual(figure.name, name)
        XCTAssertEqual(figure.abilities, Set(abilities))
    }
    
    func testEqualOperator() {
        // 1. Arrange
        let name1 = "Test 1"
        let name2 = "Test 2"
        let abilities = [Ability.Acrobat]
        let figure1 = Figure(name: name1, abilities: Set(abilities))
        let figure2 = Figure(name: name2, abilities: Set(abilities))
        
        // 3. Assert
        XCTAssertTrue(figure1 == figure1)
        XCTAssertFalse(figure1 == figure2)
    }

}
