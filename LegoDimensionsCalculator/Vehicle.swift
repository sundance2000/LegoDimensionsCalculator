//
//  Vehicle.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 04.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

class VehicleVersion: Figure {

}

class Vehicle: Figure {
    
    let versions: [VehicleVersion]
    
    init(let name: String, versions: [VehicleVersion]) {
        var abilities = Set<Ability>()
        for version in versions {
            abilities = abilities.union(version.abilities)
        }
        self.versions = versions
        super.init(name: name, abilities: abilities)
    }
    
}
