//
//  PackTests.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 10.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

import XCTest

class PackTests: XCTestCase {

    func testInit() {
        // 1. Arrange
        let name = "Test"
        let cost = 99
        let name1 = "Test 1"
        let name2 = "Test 2"
        let abilities1 = [Ability.Acrobat]
        let abilities2 = [Ability.Boomerang]
        let figure1 = Figure(name: name1, abilities: Set(abilities1))
        let figure2 = Figure(name: name2, abilities: Set(abilities2))
        
        // 2. Action
        let pack = Pack(name: name, cost: cost, figures: [figure1, figure2])
        
        // 3. Assert
        XCTAssertEqual(pack.name, name)
        XCTAssertEqual(pack.cost, cost)
        XCTAssertEqual(pack.abilities, Set(abilities1 + abilities2))
        XCTAssertEqual(pack.figures[0].name, figure1.name)
        XCTAssertEqual(pack.figures[0].abilities, figure1.abilities)
        XCTAssertEqual(pack.figures[1].name, figure2.name)
        XCTAssertEqual(pack.figures[1].abilities, figure2.abilities)
    }
    
}
