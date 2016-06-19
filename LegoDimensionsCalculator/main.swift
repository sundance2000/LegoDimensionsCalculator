//
//  main.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 04.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

/*
 - Output:
 Min Figures
 Min Packs
 Min Distinct Figures
 7 with most Abilities
 Unique Chars
 Useless Chars
 Replacement for Story Chars
 Clones
 */

/**
 Returns the abilities of a figure, which are not yet in a given ability list
 - parameter figure:    The Figure
 - parameter abilities: The given ability list
 - returns: The abilities of the figure, which are not yet in the ability list
 */
func getNewAbilities(figure: Figure, abilities: Set<Ability>) -> Set<Ability> {
    var addingAbilities = Set<Ability>()
    // Add abilities but skip ignored ones
    for ability in figure.abilities {
        if !ignoredAbilities.contains(ability) && !abilities.contains(ability) {
            addingAbilities.insert(ability)
        }
    }
    return addingAbilities
}

func getMinFigures(figureStash: Set<Figure>, figures: Set<Figure>, abilities: Set<Ability>) -> Set<Figure> {
    // Stop if all abilities are added
    if abilities.count == Ability.allValues().count {
        return figures
    }
    // Get the highest figure value
    let maxValue = (figureStash.map {getNewAbilities($0, abilities: abilities).count}).maxElement()
    // Stop if no more abilities can be added
    if maxValue == 0 {
        return figures
    }
    var figureStash = figureStash
    var figures = figures
    var abilities = abilities
    var candidates = [Figure]()
    for figure in figureStash {
        let figureAbilities = getNewAbilities(figure, abilities: abilities)
        if figureAbilities.count == maxValue {
            candidates.append(figure)
        }
    }
    // Get the highest number of abilities in the candidates set
    let maxAbilities = (candidates.map {$0.abilities.count}).maxElement()
    for figure in candidates {
        if figure.abilities.count == maxAbilities {
            let figureAbilities = getNewAbilities(figure, abilities: abilities)
            figures.insert(figure)
            figureStash.remove(figure)
            abilities = abilities.union(figureAbilities)
            return getMinFigures(figureStash, figures: figures, abilities: abilities)
        }
    }
    // Stop if no more figures are available
    return figures
}

// 1. Collect data
var figureStash = Set<Figure>()
var figures = Set<Figure>()
var abilities = Set<Ability>()
for wave in Data.waves {
    for pack in wave.packs {
        for figure in pack.figures {
            figureStash.insert(figure)
        }
    }
}
// 2. Map abilities
for figure in figureStash {
    for ability in figure.abilities {
        if mappedAbilities.keys.contains(ability) {
            figure.abilities.remove(ability)
            figure.abilities.insert(mappedAbilities[ability]!)
        }
    }
}
// 3. Remove ignored abilities
for figure in figureStash {
    for ability in figure.abilities {
        if ignoredAbilities.contains(ability) {
            figure.abilities.remove(ability)
        }
    }
}
// 3a. Remove world and level abilities
for figure in figureStash {
    for ability in figure.abilities {
        if worldAbilities.contains(ability) || levelAbilities.contains(ability) {
            figure.abilities.remove(ability)
        }
    }
}
// 4. Choose unique figures
// Init count array
var abilityCounts = [Ability: Int]()
for ability in Ability.allValues() {
    abilityCounts[ability] = 0
}
// Calculate ability counts
for figure in figureStash {
    for ability in figure.abilities {
        abilityCounts[ability] = abilityCounts[ability]! + 1
    }
}
// Add figures with unique ability to figure list
for figure in figureStash {
    for ability in figure.abilities {
        if abilityCounts[ability]! == 1 {
            figures.insert(figure)
            figureStash.remove(figure)
            abilities = abilities.union(figure.abilities)
        }
    }
}
// (5. Discard clones)
// 6. Choose best set from remaining figures
let minFigures = getMinFigures(figureStash, figures: figures, abilities: abilities)
print("Minimum Number of Figures: \(minFigures.count)")
print()
for figure in minFigures.sort({return $0.name < $1.name}) {
    print(figure)
}
