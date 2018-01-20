[![Build Status](https://travis-ci.org/sundance2000/LegoDimensionsCalculator.svg?branch=master)](https://travis-ci.org/sundance2000/LegoDimensionsCalculator) [![codecov](https://codecov.io/gh/sundance2000/LegoDimensionsCalculator/branch/master/graph/badge.svg)](https://codecov.io/gh/sundance2000/LegoDimensionsCalculator) [![BCH compliance](https://bettercodehub.com/edge/badge/sundance2000/LegoDimensionsCalculator?branch=master)](https://bettercodehub.com/)


This little tool calculates some interesting statistics for the game LEGO Dimensions. The code contains a full database of all figures available and their corresponding abilities. I have added all data by my own to make sure nothing is missing. Feel free to fork this repository and do some calculations on your own.

# Statistics
Currently, the software only calculates the minimum number of figures needed to solve the complete game. This is not only interesting when choosing which figure packs to buy. I guess that most hardcore gamers have a complete collection so it is also interesting which figures to choose for playing (at least for me it is very difficult to gather all 92 figures around my portal AND always choose the correct figure without searching).

## Minimum Number of Figures: 28
You need at least 28 different figures to solve the whole game. In particular those are:

- Aquaman
- Arcade Machine
- Bad Cop
- Chell
- Companion Cube
- Cragger
- Cyberman
- Cyborg
- DeLorean Time Machine
- Dr. Who
- Drill Driver
- Gamer Kid
- Ghost Trap
- Gyrosphere
- Homer
- Legolas
- Marty McFly
- Owen
- Peter Venkman
- Scooby-Doo
- Sentry Turret
- Slimer
- Superman
- TARDIS
- Unikitty
- Wicked Witch
- Wonder Woman
- Zane

Most interestingly, you only need five vehicles, the DeLorean Time Machine, the Drill Driver, the Gyrosphere, the Sentry Turret and the TARDIS. The only items you need are the Arcade Machine and the Ghost Trap.

## Minimum Number of Figures without World and Level Abilities: 23
If you just plan to solve one specific level or world you only need 23 different figures to cover all abilities (besides the world or level specific figures). Please note that this set is not a subset of the 28 figures above. Some of them are exchanged because the algorithm leads to a slightly different solution when dropping world and level abilities.

- Aquaman
- Arcade Machine
- Bad Cop
- Chell
- Companion Cube
- Cragger
- Cyberman
- Cyborg
- DeLorean Time Machine
- Emmet
- Ghost Trap
- Gyrosphere
- Owen
- Peter Venkman
- Scooby-Doo
- Sensei Wu
- Slimer
- Superman
- TARDIS
- Unikitty
- Wicked Witch
- Wonder Woman
- Zane

# Abilities
Some abilities require special handling so I grouped those into arrays in the Ability class.

## World Abilities
Each character figure grants access to a world. Those are:
```
    .BackToTheFutureWorld,
    .DcComicsWorld,
    .DoctorWhoWorld,
    .GhostbustersWorld,
    .JurassicWorld,
    .LegendsOfChimaWorld,
    .MidwayArcadeWorld,
    .NinjagoWorld,
    .Portal2World,
    .ScoobyDooWorld,
    .TheLegoMovieWorld,
    .TheLordOfTheRingsWorld,
    .TheSimpsonsWorld,
    .WizardOfOzWorld
```

## Level Abilities
Some character figures also grant access to an additional level. One item, the Sentry Turret, is only usable in the Portal level. To filter out those level-specific abilities an additional array is created:
```
    .BackToTheFutureLevel,
    .DoctorWhoLevel,
    .GhostbustersLevel,
    .MidwayArcadeLevel,
    .Portal2Level,
    .TheSimpsonsLevel,
    .CanBeRiddenAsATurret, // Only needed in Portal level
```

## Added Abilities
At the current stage only one ability seems to be missing: Both, Unikitty and the Cloud Cuckoo Car have the ability `RainbowLegoObjects` but only Unikitty can actually use rainbow bricks to build objects.
```
.RainbowLegoObjectsBuild
```

## Dive Abilities
There are many abilities, which can be used underwater, but only few characters have the dive ability. To be sure that all possible combinations are considered by the algorithm we need to add the dive abilities to the ability set and the corresponding figures:
```
    .DiveAcrobat,
    .DiveAtlantis,
    .DiveBoomerang,
    .DiveBigTransform,
    .DiveChi,
    .DiveDig,
    .DiveDrone,
    .DiveFreezeBreath,
    .DiveGrowth,
    .DiveHacking,
    .DiveHazardCleaner,
    .DiveHazardProtection,
    .DiveIllumination,
    .DiveInvulnerability,
    .DiveLaser,
    .DiveMindControl,
    .DiveMiniAccess,
    .DiveSilverLegoBlowup,
    .DiveSonarSmash,
    .DiveSpinjitzu,
    .DiveStealth,
    .DiveSuperStrength,
    .DiveTarget,
    .DiveTechnology,
    .DiveTracking,
    .DiveXrayVision
```

## Ignored Abilities
Abilities are nice to have but not all of them are useful. `BigTransform` and `CrackedLegoObjects` for example can be skipped because they are already covered by `SuperStrength`. Other abilities like `SlimeBeam` or `SpeedBoost` may be funny but are not needed to solve any puzzles. Last, there are nonsense abilities like `CanRideThisModel` or `MechWalker`, which have no meaning. All those abilities have to be removed by the algorithm to shrink the number of figures needed to solve the game:
```
    .BigTransform, // SuperStrength is better
    .CanRideThisModel, // No real ability
    .CapturesGoonsAsWellAsGhosts, //Not needed
    .CrackedLegoObjects, // SuperStrength is better
    .FreezeBreath, // Not needed
    .GoldLegoBlowup, // Laser is better
    .Guardian, // No real ability
    .HazardProtection, // Invulnerability is better
    .MechWalker, // No real ability
    .ModelSailsOnWater, // No real ability
    .RefillsHealthWhenNear, // Not needed
    .SlimeBeam,
    .SlimeBolts,
    .SlimeBomb,
    .SpecialAttack,
    .SpecialWeapon,
    .Speed, // Not needed
    .SpeedBoost, // Not needed
    .TauntsEnemies, // Already covered by the Ghost Trap
    .DiveBigTransform,
    .DiveFreezeBreath,
    .DiveHazardProtection
```

## Mapped Abilities
Some abilities have different names but refer to the same effect like `FlyingModel` and `Flying`. To cover such cases 
abilities need to be mapped by the algorithm:
```
    .ModelCanDiveUnderwater: .Dive,
    .ElectricitySwitches: .Electricity,
    .FlyingModel: .Flying,
    .FlyingVehicle: .Flying,
    .Growth: .WaterSpray,
    .HazardCleaner: .WaterSpray
```

# Algorithms

## Minimum Number of Figures
The most interesting question in this project is how to actually calculate the minimum number of figures with all required abilities to solve all puzzles in the game. Obviously, it is not possible to calculate all possible sets of all figures and get the minimal set. Maybe there is some magic algorithm, which I do not know (if there is one, please tell me!). Hence, I chose to first reduce the number of figures and abilities to consider and then do some analysis on the remaining data. The basic steps of my algorithm are:

1. Collect data
  * Collect all figure objects in one set
2. Map abilities
  * Replace all abilities of all figures as defined in the mapped abilities array
3. Remove ignored abilities (remove also world and level abilities if desired)
  * Remove all ignored abilities of all figures
4. Choose unique figures
  * Collect all figures with unique abilities in one array
5. Discard clones (not implemented yet)
  * From the remaining figures remove all figures with duplicate ability sets
6. Choose best set from remaining figures
  * From the remaining figures iteratively add figures to the result set if a figure can add a new ability, which is not covered by the result set yet

# Planned features

Calculate
* Minimum number of packs
* Min number of distinct figures
* The top seven figures with the most abilities
* Unique figures
* Useless figures
* Replacement figures for story figures
* Clones

# Notice
LEGO Dimensions content and materials are trademarks and copyrights of TT Games and Warner Bros. Interactive Entertainment.