//
//  ItemTest.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 04.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

import XCTest

class ItemTests: XCTestCase {

    func testInit() {
        // 1. Arrange
        let name = "Test"
        let name1 = "Test 1"
        let name2 = "Test 2"
        let abilities1 = [Ability.Acrobat]
        let abilities2 = [Ability.Boomerang]
        let itemVersion1 = ItemVersion(name: name1, abilities: Set(abilities1))
        let itemVersion2 = ItemVersion(name: name2, abilities: Set(abilities2))
        
        // 2. Action
        let item = Item(name: name, versions: [itemVersion1, itemVersion2])
        
        // 3. Assert
        XCTAssertEqual(item.name, name)
        XCTAssertEqual(item.abilities, Set(abilities1 + abilities2))
        XCTAssertEqual(item.versions[0].name, itemVersion1.name)
        XCTAssertEqual(item.versions[0].abilities, itemVersion1.abilities)
        XCTAssertEqual(item.versions[1].name, itemVersion2.name)
        XCTAssertEqual(item.versions[1].abilities, itemVersion2.abilities)
    }

}
