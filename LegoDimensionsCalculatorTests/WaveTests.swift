//
//  WaveTests.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 04.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

import XCTest

class WaveTests: XCTestCase {
 
    func testInit() {
        // 1. Arrange
        let name = "Test"
        let pack = Pack(name: "Test Pack", cost: 99, figures: [])
        
        // 2. Action
        let wave = Wave(name: name, packs: [pack])
        
        // 3. Assert
        XCTAssertEqual(wave.name, name)
        XCTAssertEqual(wave.packs[0].name, pack.name)
        XCTAssertEqual(wave.packs[0].cost, pack.cost)
        XCTAssertEqual(wave.packs[0].figures.count, pack.figures.count)
    }
    
}
