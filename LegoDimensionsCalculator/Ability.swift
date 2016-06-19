//
//  Ability.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 04.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

protocol EnumerableEnum: RawRepresentable {
    static func allValues() -> [Self]
}
extension EnumerableEnum where RawValue == Int {
    static func allValues() -> [Self] {
        var index = -1
        return Array(AnyGenerator {
            index += 1
            return Self(rawValue: Int(index))
            })
    }
}

enum Ability: Int, EnumerableEnum {
    case AcceleratorSwitches
    case Acrobat
    case Atlantis
    case BigTransform
    case Boomerang
    case CanBeRiddenAsATurret
    case CanRideThisModel
    case CanUseRetroGamesToCompletePuzzles
    case CapturesGoonsAsWellAsGhosts
    case Chi
    case CrackedLegoObjects
    case Dig
    case Dive
    case Drill
    case Drone
    case Electricity
    case ElectricitySwitches
    case FixIt
    case FlightDocksAndFlightCargoHooks
    case Flying
    case FlyingModel
    case FlyingVehicle
    case FreezeBreath
    case GhostTrap
    case Grapple
    case GoldLegoBlowup
    case Guardian
    case Growth
    case GyrosphereSwitch
    case Hacking
    case HazardCleaner
    case HazardProtection
    case Hoverboard
    case Illumination
    case Invulnerability
    case Laser
    case LaserDeflector
    case Magic
    case MagicalShield
    case MasterBuild
    case MechWalker
    case MindControl
    case MiniAccess
    case ModelCanDiveUnderwater
    case ModelSailsOnWater
    case Music
    case PoleVault
    case PortalGun
    case RainbowLegoObjectsBuild // Unitkitty und Cloud Cuckoo Car have RainbowLegoObjects but only Unitkitty can build with rainbow objects
    case RainbowLegoObjects
    case RefillsHealthWhenNear
    case RelicDetector
    case SentryTurret
    case SpeedBoost
    case SilverLegoBlowup
    case SlimeBeam
    case SlimeBolts
    case SlimeBomb
    case SonarSmash
    case SpecialAttack
    case SpecialWeapon
    case Speed
    case Spinjitzu
    case Stealth
    case SuperStrength
    case SuspendGhost
    case Target
    case TauntsEnemies
    case Technology
    case TheTardisCanTravelToAnyPointInAllOfTimeAndSpace
    case TimeTravel
    case TowBar
    case Tracking
    case VineCut
    case WaterSpray
    case WeightSwitch
    case XrayVision
    // Dive
    case DiveAcrobat
    case DiveAtlantis
    case DiveBoomerang
    case DiveBigTransform
    case DiveChi
    case DiveDig
    case DiveDrone
    case DiveFreezeBreath
    case DiveGrowth
    case DiveHacking
    case DiveHazardCleaner
    case DiveHazardProtection
    case DiveIllumination
    case DiveInvulnerability
    case DiveLaser
    case DiveMindControl
    case DiveMiniAccess
    case DiveSilverLegoBlowup
    case DiveSonarSmash
    case DiveSpinjitzu
    case DiveStealth
    case DiveSuperStrength
    case DiveTarget
    case DiveTechnology
    case DiveTracking
    case DiveXrayVision
    // Worlds
    case BackToTheFutureWorld
    case DcComicsWorld
    case DoctorWhoWorld
    case GhostbustersWorld
    case JurassicWorld
    case LegendsOfChimaWorld
    case MidwayArcadeWorld
    case NinjagoWorld
    case Portal2World
    case ScoobyDooWorld
    case TheLegoMovieWorld
    case TheLordOfTheRingsWorld
    case TheSimpsonsWorld
    case WizardOfOzWorld
    // Levels
    case BackToTheFutureLevel
    case DoctorWhoLevel
    case GhostbustersLevel
    case MidwayArcadeLevel
    case Portal2Level
    case TheSimpsonsLevel
}

let worldAbilities: [Ability] = [
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
]

let levelAbilities: [Ability] = [
    .BackToTheFutureLevel,
    .DoctorWhoLevel,
    .GhostbustersLevel,
    .MidwayArcadeLevel,
    .Portal2Level,
    .TheSimpsonsLevel,
    .CanBeRiddenAsATurret, // Only needed in Portal level
    .TauntsEnemies // Only needed in The Simpsons level
]

///  These abilities can be used while diving
let diveAbilities: [Ability] = [
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
]

/// These abilities are ignored because they do not have any function (drive/ride abilities are not even listed in the Ability enum)
let ignoredAbilities: [Ability] = [
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
    .SentryTurret, // Not needed
    .SlimeBeam,
    .SlimeBolts,
    .SlimeBomb,
    .SpecialAttack,
    .SpecialWeapon,
    .Speed, // Not needed
    .SpeedBoost, // Not needed
    .DiveBigTransform,
    .DiveFreezeBreath,
    .DiveHazardProtection
]

let mappedAbilities: [Ability: Ability] = [
    .ModelCanDiveUnderwater: .Dive,
    .ElectricitySwitches: .Electricity,
    .FlyingModel: .Flying,
    .FlyingVehicle: .Flying,
    .Growth: .WaterSpray,
    .HazardCleaner: .WaterSpray
]
