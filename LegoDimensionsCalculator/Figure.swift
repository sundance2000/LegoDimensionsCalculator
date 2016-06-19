//
//  Figure.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 04.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

class Figure: CustomStringConvertible, Hashable {
    
    let name: String
    /// All abilities of all versions of the figure
    var abilities: Set<Ability>
    var description: String {
        get {
            return self.name
        }
    }
    var hashValue: Int {
        get {
            return self.name.hashValue
        }
    }
    
    init(let name: String, abilities: Set<Ability>) {
        self.name = name
        self.abilities = abilities
    }
    
}

func ==(lhs: Figure, rhs: Figure) -> Bool {
    return lhs.name == rhs.name
}
