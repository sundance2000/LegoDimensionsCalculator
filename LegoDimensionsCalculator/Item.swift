//
//  Item.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 04.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

class ItemVersion: Figure {
    
}

class Item: Figure {
    
    let versions: [ItemVersion]
    
    init(let name: String, versions: [ItemVersion]) {
        var abilities = Set<Ability>()
        for version in versions {
            abilities = abilities.union(version.abilities)
        }
        self.versions = versions
        super.init(name: name, abilities: abilities)
    }
    
}