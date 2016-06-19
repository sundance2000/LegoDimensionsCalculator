//
//  Pack.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 05.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

// A Pack is consireded as a meta figure
class Pack: Figure {
    
    let cost: Int
    let figures: [Figure]
    
    init(let name: String, cost: Int, figures: [Figure]) {
        /// All abilities of all figures in the pack
        var abilities = Set<Ability>()
        for figure in figures {
            abilities = abilities.union(figure.abilities)
        }
        self.cost = cost
        self.figures = figures
        // Convert to set and back to array to remove duplicates
        super.init(name: name, abilities: abilities)
    }
    
}