//
//  AbilityTests.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 16.06.16.
//  Copyright © 2016 sundance. All rights reserved.
//

import XCTest

class AbilityTests: XCTestCase {
    
    enum TestAbility: Int, EnumerableEnum {
        case Acrobat
        case Atlantis
        case Boomerang
    }
    
    func testAllValues() {
        // 3. Assert
        XCTAssertEqual(TestAbility.allValues(), [TestAbility.Acrobat, TestAbility.Atlantis, TestAbility.Boomerang])
    }
    
}
