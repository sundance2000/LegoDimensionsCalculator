//
//  VehicleTests.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 04.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

import XCTest

class VehicleTests: XCTestCase {

    func testInit() {
        // 1. Arrange
        let name = "Test"
        let name1 = "Test 1"
        let name2 = "Test 2"
        let abilities1 = [Ability.Acrobat]
        let abilities2 = [Ability.Boomerang]
        let vehicleVersion1 = VehicleVersion(name: name1, abilities: Set(abilities1))
        let vehicleVersion2 = VehicleVersion(name: name2, abilities: Set(abilities2))

        // 2. Action
        let vehicle = Vehicle(name: name, versions: [vehicleVersion1, vehicleVersion2])
        
        // 3. Assert
        XCTAssertEqual(vehicle.name, name)
        XCTAssertEqual(vehicle.abilities, Set(abilities1 + abilities2))
        XCTAssertEqual(vehicle.versions[0].name, vehicleVersion1.name)
        XCTAssertEqual(vehicle.versions[0].abilities, Set(vehicleVersion1.abilities))
        XCTAssertEqual(vehicle.versions[1].name, vehicleVersion2.name)
        XCTAssertEqual(vehicle.versions[1].abilities, Set(vehicleVersion2.abilities))
    }

}
