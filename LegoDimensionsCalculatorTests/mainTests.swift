//
//  mainTests.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 16.06.16.
//  Copyright © 2016 sundance. All rights reserved.
//

import XCTest

class mainTests: XCTestCase {
    
    func testGetNewAbilities() {
        // 1. Arrange
        let abilities = Set([Ability.Acrobat])
        let figure = Figure(name: "Test", abilities: Set([Ability.Acrobat, Ability.BigTransform, Ability.Boomerang]))
        
        // 3. Assert
        XCTAssertEqual(getNewAbilities(figure, abilities: abilities), Set([Ability.Boomerang]))
    }
    
    func testGetMinFigures() {
        // 1. Arrange
        let figure1 = Figure(name: "Test 1", abilities: Set([Ability.Acrobat, Ability.Dive]))
        let figure2 = Figure(name: "Test 2", abilities: Set([Ability.Acrobat, Ability.Boomerang]))
        let figure3 = Figure(name: "Test 3", abilities: Set([Ability.Acrobat, Ability.Atlantis, Ability.Boomerang]))
        let figure4 = Figure(name: "Test 4", abilities: Set([Ability.Dive]))
        
        // 3. Assert
        XCTAssertEqual(getMinFigures(Set<Figure>(), figures: Set<Figure>(), abilities: Set<Ability>()), Set<Figure>())
        XCTAssertEqual(getMinFigures(Set([figure1]), figures: Set<Figure>(), abilities: Set<Ability>()), Set([figure1]))
        XCTAssertEqual(getMinFigures(Set([figure1, figure2, figure3, figure4]), figures: Set<Figure>(), abilities: Set<Ability>()), Set([figure1, figure3]))
        XCTAssertEqual(getMinFigures(Set([figure1, figure2, figure3, figure4]), figures: Set<Figure>(), abilities: Set(Ability.allValues())), Set<Figure>())


    }
}
