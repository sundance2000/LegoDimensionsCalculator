//
//  Data.swift
//  LegoDimensionsCalculator
//
//  Created by Christian Oberdörfer on 05.05.16.
//  Copyright © 2016 sundance. All rights reserved.
//

class Data {
    
    static let waves: [Wave] = [
        Wave(name: "Starter Pack", packs: [
            Pack(name: "Starter Pack", cost: 77, figures: [
                Character(name: "Batman", abilities: [.Boomerang, .Grapple, .Stealth, .DcComicsWorld]),
                Character(name: "Wildstyle", abilities: [.Acrobat, .MasterBuild, .RelicDetector, .TheLegoMovieWorld]),
                Character(name: "Gandalf", abilities: [.Illumination, .Magic, .MagicalShield, .TheLordOfTheRingsWorld]),
                Vehicle(name: "Batmobile", versions: [
                    VehicleVersion(name: "Batmobile", abilities: [.AcceleratorSwitches]),
                    VehicleVersion(name: "The Batblaster", abilities: [.AcceleratorSwitches, .SonarSmash, .TowBar]),
                    VehicleVersion(name: "Sonic Batray", abilities: [.AcceleratorSwitches, .SonarSmash, .SpecialAttack])
                    ]
                )
                ]
            )
            ]
        ),
        Wave(name: "Wave 1", packs: [
            Pack(name: "Back to the Future Level Pack", cost: 25, figures: [
                Character(name: "Marty McFly", abilities: [.SonarSmash, .BackToTheFutureWorld, .BackToTheFutureLevel]),
                Vehicle(name: "DeLorean Time Machine", versions: [
                    VehicleVersion(name: "DeLorean Time Machine", abilities: [.AcceleratorSwitches, .TimeTravel]),
                    VehicleVersion(name: "Electric Time Machine", abilities: [.AcceleratorSwitches, .ElectricitySwitches, .SpecialAttack, .TowBar]),
                    VehicleVersion(name: "Ultra Time Machine", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .SilverLegoBlowup])
                    ]
                ),
                Vehicle(name: "Hoverboard", versions: [
                    VehicleVersion(name: "Hoverboard", abilities: []),
                    VehicleVersion(name: "Cyclone Board", abilities: [.SpecialAttack]),
                    VehicleVersion(name: "Ultimate Hoverjet", abilities: [.FlyingVehicle, .SilverLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Portal 2 Level Pack", cost: 25, figures: [
                Character(name: "Chell", abilities: [.Acrobat, .PortalGun, .Portal2World, .Portal2Level]),
                Vehicle(name: "Sentry Turret", versions: [
                    VehicleVersion(name: "Sentry Turret", abilities: [.CanBeRiddenAsATurret, .CanRideThisModel]),
                    VehicleVersion(name: "Turret Striker", abilities: [.GoldLegoBlowup]),
                    VehicleVersion(name: "Flying Turret Carrier", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SilverLegoBlowup])
                    ]
                ),
                Item(name: "Companion Cube", versions: [
                    ItemVersion(name: "Compnaion Cube", abilities: [.WeightSwitch]),
                    ItemVersion(name: "Laser Deflector", abilities: [.LaserDeflector, .WeightSwitch]),
                    ItemVersion(name: "Gold Heart Emitter", abilities: [.RefillsHealthWhenNear, .WeightSwitch])
                    ]
                )
                ]
            ),
            Pack(name: "Simpsons Level Pack", cost: 25, figures: [
                Character(name: "Homer", abilities: [.BigTransform, .SonarSmash, .SuperStrength, .TheSimpsonsWorld, .TheSimpsonsLevel]),
                Vehicle(name: "Homer's Car", versions: [
                    VehicleVersion(name: "Homer's Car", abilities: [.AcceleratorSwitches, .TowBar]),
                    VehicleVersion(name: "The Homercraft", abilities: [.ModelSailsOnWater]),
                    VehicleVersion(name: "The SubmaHomer", abilities: [.ModelCanDiveUnderwater, .SilverLegoBlowup, .DiveSilverLegoBlowup])
                    ]
                ),
                Vehicle(name: "Taunt-o-Vision", versions: [
                    VehicleVersion(name: "Taunt-o-Vision", abilities: [.TauntsEnemies, .SilverLegoBlowup]),
                    VehicleVersion(name: "Blast Cam", abilities: [.CanBeRiddenAsATurret, .SpecialWeapon]),
                    VehicleVersion(name: "The MechaHomer", abilities: [.GoldLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Jurassic World Team Pack", cost: 23, figures: [
                Character(name: "Owen", abilities: [.Stealth, .Target, .Tracking, .VineCut, .JurassicWorld]),
                Character(name: "ACU Trooper", abilities: [.Electricity, .Illumination, .JurassicWorld]),
                Vehicle(name: "Velociraptor", versions: [
                    VehicleVersion(name: "Velociraptor", abilities: [.Guardian, .VineCut]),
                    VehicleVersion(name: "Spike Attack Raptor", abilities: [.CrackedLegoObjects, .Dig, .Guardian, .VineCut]),
                    VehicleVersion(name: "Venom Raptor", abilities: [.CrackedLegoObjects, .Guardian, .VineCut, .SpecialAttack])
                    ]
                ),
                Vehicle(name: "Gyrosphere", versions: [
                    VehicleVersion(name: "Gyrosphere", abilities: [.GyrosphereSwitch]),
                    VehicleVersion(name: "Sonic Beam Gyrosphere", abilities: [.GyrosphereSwitch, .SonarSmash]),
                    VehicleVersion(name: "Speed Boost Gyrosphere", abilities: [.GyrosphereSwitch, .SpeedBoost])
                    ]
                )
                ]
            ),
            Pack(name: "Scooby Doo Team Pack", cost: 23, figures: [
                Character(name: "Scooby-Doo", abilities: [.Dig, .Dive, .Stealth, .Tracking, .DiveDig, .DiveStealth, .DiveTracking, .ScoobyDooWorld]),
                Character(name: "Shaggy", abilities: [.Illumination, .Stealth, .Tracking, .ScoobyDooWorld]),
                Item(name: "Scooby Snack", versions: [
                    ItemVersion(name: "Scooby Snack", abilities: [.CrackedLegoObjects]),
                    ItemVersion(name: "Scooby Fire Snack", abilities: [.GoldLegoBlowup]),
                    ItemVersion(name: "Scooby Ghost Snack", abilities: [.Stealth])
                    ]
                ),
                Vehicle(name: "Mystery Machine", versions: [
                    VehicleVersion(name: "Mystery Machine", abilities: [.AcceleratorSwitches]),
                    VehicleVersion(name: "Mystery Tow & Go", abilities: [.AcceleratorSwitches, .TowBar]),
                    VehicleVersion(name: "Mystery Monster", abilities: [.AcceleratorSwitches, .WaterSpray])
                    ]
                )
                ]
            ),
            Pack(name: "DC Wonder Woman Fun Pack", cost: 13, figures: [
                Character(name: "Wonder Woman", abilities: [.Acrobat, .Boomerang, .Flying, .Grapple, .Invulnerability, .LaserDeflector, .MindControl, .DcComicsWorld]),
                Vehicle(name: "Invisible Jet", versions: [
                    VehicleVersion(name: "Invisible Jet", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .Stealth]),
                    VehicleVersion(name: "Stealth Laser Shooter", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .GoldLegoBlowup, .Stealth]),
                    VehicleVersion(name: "Torpedo Bomber", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SilverLegoBlowup, .Stealth])
                    ]
                )
                ]
            ),
            Pack(name: "DC Cyborg Fun Pack", cost: 14, figures: [
                Character(name: "Cyborg", abilities: [.BigTransform, .Dive, .Laser, .SuperStrength, .Target, .Technology, .DiveBigTransform, .DiveLaser, .DiveSuperStrength, .DiveTarget, .DiveTechnology, .DcComicsWorld]),
                Vehicle(name: "Cyber Guard", versions: [
                    VehicleVersion(name: "Cyber Guard", abilities: [.MechWalker]),
                    VehicleVersion(name: "Cyber-Wrecker", abilities: [.CrackedLegoObjects, .Dig]),
                    VehicleVersion(name: "Laser Robot Walker", abilities: [.GoldLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "LEGO Movie Emmet Fun Pack", cost: 15, figures: [
                Character(name: "Emmet", abilities: [.Drill, .FixIt, .MasterBuild, .TheLegoMovieWorld]),
                Vehicle(name: "Emmet's Excavator", versions: [
                    VehicleVersion(name: "Emmet's Excavator", abilities: [.AcceleratorSwitches, .Dig]),
                    VehicleVersion(name: "The Destroydozer", abilities: [.AcceleratorSwitches, .Dig, .TowBar]),
                    VehicleVersion(name: "Destruct-o-Mech", abilities: [.CrackedLegoObjects, .MechWalker])
                    ]
                )
                ]
            ),
            Pack(name: "LEGO Movie Bad Cop", cost: 15, figures: [
                Character(name: "Bad Cop", abilities: [.Laser, .RelicDetector, .Target, .TheLegoMovieWorld]),
                Vehicle(name: "Police Car", versions: [
                    VehicleVersion(name: "Police Car", abilities: [.AcceleratorSwitches, .TowBar]),
                    VehicleVersion(name: "Aerial Squad Car", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle]),
                    VehicleVersion(name: "Missile Striker", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .SilverLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "LEGO Movie Benny Fun Pack", cost: 15, figures: [
                Character(name: "Benny", abilities: [.Hacking, .MasterBuild, .SonarSmash, .Target, .Technology, .TheLegoMovieWorld]),
                Vehicle(name: "Benny's Spaceship", versions: [
                    VehicleVersion(name: "Benny's Spaceship", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel]),
                    VehicleVersion(name: "Lasercraft", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .GoldLegoBlowup]),
                    VehicleVersion(name: "The Annihilator", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SilverLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Ninjago Jay Fun Pack", cost: 15, figures: [
                Character(name: "Jay", abilities: [.Acrobat, .Electricity, .FixIt, .Spinjitzu, .Stealth, .NinjagoWorld]),
                Vehicle(name: "Storm Fighter", versions: [
                    VehicleVersion(name: "Storm Fighter", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel]),
                    VehicleVersion(name: "Lightning Jet", abilities: [.ElectricitySwitches, .FlightDocksAndFlightCargoHooks, .FlyingModel, .GoldLegoBlowup]),
                    VehicleVersion(name: "Electro-Shooter", abilities: [.ElectricitySwitches, .FlightDocksAndFlightCargoHooks, .FlyingModel, .SpecialAttack])
                    ]
                )
                ]
            ),
            Pack(name: "Ninjago Nya Fun Pack", cost: 15, figures: [
                Character(name: "Nya", abilities: [.Acrobat, .FixIt, .LaserDeflector, .Spinjitzu, .Stealth, .NinjagoWorld]),
                Vehicle(name: "Samurai Mech", versions: [
                    VehicleVersion(name: "Samurai Mech", abilities: [.CanRideThisModel, .CrackedLegoObjects, .MechWalker]),
                    VehicleVersion(name: "Samurai Shooter", abilities: [.SilverLegoBlowup]),
                    VehicleVersion(name: "Soaring Samurai Mech", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .SilverLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Ninjago Zane Fun Pack", cost: 14, figures: [
                Character(name: "Zane", abilities: [.Acrobat, .Boomerang, .Dive, .Spinjitzu, .Stealth, .XrayVision, .DiveAcrobat, .DiveBoomerang, .DiveSpinjitzu, .DiveStealth, .DiveXrayVision, .NinjagoWorld]),
                Vehicle(name: "NinjaCopter", versions: [
                    VehicleVersion(name: "NinjaCopter", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel]),
                    VehicleVersion(name: "Glaciator", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SpecialAttack]),
                    VehicleVersion(name: "Freeze Fighter", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .GoldLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Lord Of The Rings Gollum Fun Pack", cost: 12, figures: [
                Character(name: "Gollum", abilities: [.Acrobat, .Boomerang, .Dive, .MiniAccess, .SilverLegoBlowup, .DiveAcrobat, .DiveBoomerang, .DiveMiniAccess, .DiveSilverLegoBlowup, .TheLordOfTheRingsWorld]),
                Vehicle(name: "Shelob the Great", versions: [
                    VehicleVersion(name: "Shelob the Great", abilities: [.Dig]),
                    VehicleVersion(name: "6-Legged Stalker", abilities: [.CrackedLegoObjects, .Dig, .SpecialAttack]),
                    VehicleVersion(name: "Poison Slinger", abilities: [.CrackedLegoObjects, .Dig, .SpecialAttack])
                    ]
                )
                ]
            ),
            Pack(name: "Lord Of The Rings Legolas Fun Pack", cost: 12, figures: [
                Character(name: "Legolas", abilities: [.Acrobat, .PoleVault, .Target, .TheLordOfTheRingsWorld]),
                Vehicle(name: "Arrow Launcher", versions: [
                    VehicleVersion(name: "Arrow Launcher", abilities: [.AcceleratorSwitches]),
                    VehicleVersion(name: "Seeking Shooter", abilities: [.AcceleratorSwitches, .SpecialAttack, .TowBar]),
                    VehicleVersion(name: "Triple Ballista", abilities: [.AcceleratorSwitches, .SpecialAttack])
                    ]
                )
                ]
            ),
            Pack(name: "Lord Of The Rings Gimli Fun Pack", cost: 12, figures: [
                Character(name: "Gimli", abilities: [.MiniAccess, .SuperStrength, .TheLordOfTheRingsWorld]),
                Vehicle(name: "Axe Chariot", versions: [
                    VehicleVersion(name: "Axe Chariot", abilities: [.AcceleratorSwitches, .TowBar]),
                    VehicleVersion(name: "Axe Hurler", abilities: [.AcceleratorSwitches, .SpecialAttack, .TowBar]),
                    VehicleVersion(name: "Soaring Chariot", abilities: [.AcceleratorSwitches, .FlightDocksAndFlightCargoHooks, .FlyingVehicle, .TowBar])
                    ]
                )
                ]
            ),
            Pack(name: "Chima Laval Fun Pack", cost: 12, figures: [
                Character(name: "Laval", abilities: [.Acrobat, .Chi, .LaserDeflector, .SonarSmash, .SuperStrength, .LegendsOfChimaWorld]),
                Vehicle(name: "Mighty Lion Rider", versions: [
                    VehicleVersion(name: "Mighty Lion Rider", abilities: [.AcceleratorSwitches]),
                    VehicleVersion(name: "Lion Blazer", abilities: [.SpecialAttack, .TowBar]),
                    VehicleVersion(name: "Fire Lion", abilities: [.SpecialWeapon])
                    ]
                )
                ]
            ),
            Pack(name: "Chima Cragger Fun Pack", cost: 12, figures: [
                Character(name: "Cragger", abilities: [.Chi, .Dive, .HazardProtection, .SuperStrength, .DiveChi, .DiveHazardProtection, .DiveSuperStrength, .LegendsOfChimaWorld]),
                Vehicle(name: "Swamp Skimmer", versions: [
                    VehicleVersion(name: "Swamp Skimmer", abilities: [.ModelSailsOnWater]),
                    VehicleVersion(name: "Cragger's Fireship", abilities: [.SpecialAttack, .SpeedBoost]),
                    VehicleVersion(name: "Croc Command Sub", abilities: [.ModelCanDiveUnderwater, .DiveSilverLegoBlowup, .SilverLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Chima Eris Fun Pack", cost: 12, figures: [
                Character(name: "Eris", abilities: [.Chi, .Flying, .SuperStrength, .Target, .LegendsOfChimaWorld]),
                Vehicle(name: "Eagle Interceptor", versions: [
                    VehicleVersion(name: "Eagle Interceptor", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel]),
                    VehicleVersion(name: "Eagle Skyblazer", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SilverLegoBlowup, .SpeedBoost]),
                    VehicleVersion(name: "Eagle Swoop Diver", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .GoldLegoBlowup, .SpecialAttack])
                    ]
                )
                ]
            ),
            Pack(name: "Wizard of Oz Wicked Witch Fun Pack", cost: 15, figures: [
                Character(name: "Wicked Witch", abilities: [.Flying, .Illumination, .Magic, .MagicalShield, .MindControl, .SilverLegoBlowup, .WizardOfOzWorld]),
                Vehicle(name: "Winged Monkey", versions: [
                    VehicleVersion(name: "Winged Monkey", abilities: []),
                    VehicleVersion(name: "Battle Monkey", abilities: [.SilverLegoBlowup, .SpecialAttack]),
                    VehicleVersion(name: "Commander Monkey", abilities: [.FlyingModel, .SonarSmash, .SpecialWeapon])
                    ]
                )
                ]
            )
            ]
        ),
        Wave(name: "Wave 2", packs: [
            Pack(name: "Dr. Who Level Pack", cost: 30, figures: [
                Character(name: "Dr. Who", abilities: [.FixIt, .Hacking, .SonarSmash, . Technology, .DoctorWhoWorld, .DoctorWhoLevel]),
                Vehicle(name: "TARDIS", versions: [
                    VehicleVersion(name: "TARDIS", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .Stealth, .TheTardisCanTravelToAnyPointInAllOfTimeAndSpace]),
                    VehicleVersion(name: "Laser-Pulse TARDIS", abilities: [.FlyingVehicle, .GoldLegoBlowup, .Stealth, .TheTardisCanTravelToAnyPointInAllOfTimeAndSpace]),
                    VehicleVersion(name: "Laser-Burst TARDIS", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .Stealth, .TheTardisCanTravelToAnyPointInAllOfTimeAndSpace])
                    ]
                ),
                Vehicle(name: "K-9", versions: [
                    VehicleVersion(name: "K-9", abilities: [.CanRideThisModel, .SilverLegoBlowup]),
                    VehicleVersion(name: "K-9 Ruff Rover", abilities: [.SonarSmash]),
                    VehicleVersion(name: "K-9 Laser Cutter", abilities: [.GoldLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Ninjago Team Pack", cost: 25, figures: [
                Character(name: "Cole", abilities: [.Acrobat, .LaserDeflector, .Spinjitzu, .Stealth, .SuperStrength, .NinjagoWorld]),
                Character(name: "Kai", abilities: [.Acrobat, .LaserDeflector, .Spinjitzu, .Stealth, .NinjagoWorld]),
                Vehicle(name: "Boulder Bomber", versions: [
                    VehicleVersion(name: "Boulder Bomber", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel]),
                    VehicleVersion(name: "BoulderBlaster", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SilverLegoBlowup]),
                    VehicleVersion(name: "Cyclone Jet", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SpecialAttack])
                    ]
                ),
                Vehicle(name: "Blade Bike", versions: [
                    VehicleVersion(name: "Blade Bike", abilities: [.AcceleratorSwitches]),
                    VehicleVersion(name: "Flying Fire Bike", abilities: [.AcceleratorSwitches, .FlightDocksAndFlightCargoHooks, .FlyingVehicle, .SpecialAttack]),
                    VehicleVersion(name: "Blades of Fire", abilities: [.AcceleratorSwitches, .FlightDocksAndFlightCargoHooks, .FlyingVehicle, .SpecialAttack])
                    ]
                ),
                ]
            ),
            Pack(name: "Simpsons Bart Fun Pack", cost: 14, figures: [
                Character(name: "Bart", abilities: [.MiniAccess, .Target, .TheSimpsonsWorld]),
                Vehicle(name: "Gravity Sprinter", versions: [
                    VehicleVersion(name: "Gravity Sprinter", abilities: [.AcceleratorSwitches]),
                    VehicleVersion(name: "Street Shredder", abilities: [.AcceleratorSwitches, .SpeedBoost, .TowBar]),
                    VehicleVersion(name: "Sky Clobberer", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SpecialAttack])
                    ]
                )
                ]
            ),
            Pack(name: "Simpsons Krusty Fun Pack", cost: 15, figures: [
                Character(name: "Krusty", abilities: [.Growth, .HazardCleaner, .TheSimpsonsWorld]),
                Vehicle(name: "Clown Bike", versions: [
                    VehicleVersion(name: "Clown Bike", abilities: [.AcceleratorSwitches]),
                    VehicleVersion(name: "Cannon Bike", abilities: [.AcceleratorSwitches, .SpecialAttack, .TowBar]),
                    VehicleVersion(name: "Anti-Gravity Rocket Bike", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle])
                    ]
                )
                ]
            ),
            Pack(name: "LEGO Movie Unikitty Fun Pack", cost: 15, figures: [
                Character(name: "Unikitty", abilities: [.BigTransform, .MasterBuild, .RainbowLegoObjects, .RainbowLegoObjectsBuild, .TheLegoMovieWorld]),
                Vehicle(name: "Cloud Cuckoo Car", versions: [
                    VehicleVersion(name: "Cloud Cuckoo Car", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle]),
                    VehicleVersion(name: "X-Stream Soaker", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .WaterSpray]),
                    VehicleVersion(name: "Rainbow Cannon", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .RainbowLegoObjects, .SpecialAttack])
                    ]
                )
                ]
            )
            ]
        ),
        Wave(name: "Wave 3", packs: [
            Pack(name: "Ghostbusters Level Pack", cost: 25, figures: [
                Character(name: "Peter Venkman", abilities: [.HazardProtection, .Laser, .SuspendGhost, .GhostbustersWorld, .GhostbustersLevel]),
                Vehicle(name: "Ecto-1", versions: [
                    VehicleVersion(name: "Ecto-1", abilities: [.AcceleratorSwitches]),
                    VehicleVersion(name: "Ecto-1 Blaster", abilities: [.AcceleratorSwitches, .TowBar, .WaterSpray]),
                    VehicleVersion(name: "Ecto-1 Water Diver", abilities: [.ModelCanDiveUnderwater, .DiveSilverLegoBlowup, .SilverLegoBlowup])
                    ]
                ),
                Item(name: "Ghost Trap", versions: [
                    ItemVersion(name: "Ghost Trap", abilities: [.GhostTrap]),
                    ItemVersion(name: "Ghost Stun 'n' Trap", abilities: [.CapturesGoonsAsWellAsGhosts, .SpecialAttack]),
                    ItemVersion(name: "Proton Zapper", abilities: [.GoldLegoBlowup, .SpecialWeapon])
                    ]
                )
                ]
            ),
            Pack(name: "DC Comics Team Pack", cost: 25, figures: [
                Character(name: "The Joker", abilities: [.Electricity, .Grapple, .HazardProtection, .Target, .DcComicsWorld]),
                Character(name: "Harley Quinn", abilities: [.Acrobat, .SuperStrength, .DcComicsWorld]),
                Vehicle(name: "The Joker's Copter", versions: [
                    VehicleVersion(name: "The Joker's Copter", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .SpecialAttack]),
                    VehicleVersion(name: "Mischievous Missile Blaster", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .SpecialAttack]),
                    VehicleVersion(name: "The Joker's Lock 'n' Laser Jet", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .GoldLegoBlowup, .SpecialAttack])
                    ]
                ),
                Vehicle(name: "Quinn-mobile", versions: [
                    VehicleVersion(name: "Quinn-mobile", abilities: [.AcceleratorSwitches]),
                    VehicleVersion(name: "Quinn Ultra Racer", abilities: [.SpeedBoost, .TowBar]),
                    VehicleVersion(name: "Missile Launcher", abilities: [.SilverLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Dr. Who Cyberman Fun Pack", cost: 15, figures: [
                Character(name: "Cyberman", abilities: [.Dive, .Drone, .Hacking, .MindControl, .SilverLegoBlowup, .Technology, .XrayVision, .DiveDrone, .DiveHacking, .DiveMindControl, .DiveSilverLegoBlowup, .DiveTechnology, .DiveXrayVision, .DoctorWhoWorld]),
                Vehicle(name: "Dalek", versions: [
                    VehicleVersion(name: "Dalek", abilities: []),
                    VehicleVersion(name: "Fire 'n' Ride Dalek", abilities: [.CanBeRiddenAsATurret, .GoldLegoBlowup]),
                    VehicleVersion(name: "Silver Shooter Dalek", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .SilverLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Back to the Future Doc Brown Fun Pack", cost: 15, figures: [
                Character(name: "Doc Brown", abilities: [.Drone, .FixIt, .Hacking, .Technology, .BackToTheFutureWorld]),
                Vehicle(name: "Travelling Time Train", versions: [
                    VehicleVersion(name: "Travelling Time Train", abilities: [.AcceleratorSwitches, .TimeTravel]),
                    VehicleVersion(name: "Flying Time Train", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .TimeTravel, .TowBar]),
                    VehicleVersion(name: "Missile Blast Time Train", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingVehicle, .SilverLegoBlowup, .TimeTravel])
                    ]
                )
                ]
            ),
            Pack(name: "Ninjago Sensei Wu Fun Pack", cost: 15, figures: [
                Character(name: "Sensei Wu", abilities: [.Acrobat, .PoleVault, .Spinjitzu, .Stealth, .NinjagoWorld]),
                Vehicle(name: "Flying White Dragon", versions: [
                    VehicleVersion(name: "Flying White Dragon", abilities: [.FlyingModel]),
                    VehicleVersion(name: "Golden Fire Dragon", abilities: [.FlyingModel, .SpecialAttack]),
                    VehicleVersion(name: "Ultra Desctruction Dragon", abilities: [.FlyingModel, .SpecialWeapon])
                    ]
                )
                ]
            )
            ]
        ),
        Wave(name: "Wave 4", packs: [
            Pack(name: "Midway Retro Gamer Level Pack", cost: 30, figures: [
                Character(name: "Gamer Kid", abilities: [.Invulnerability, .Laser, .Speed, .Stealth, .SuperStrength, .MidwayArcadeWorld, .MidwayArcadeLevel]),
                Vehicle(name: "G-6155 Spy Hunter", versions: [
                    VehicleVersion(name: "G-6155 Spy Hunter", abilities: [.AcceleratorSwitches, .TowBar]),
                    VehicleVersion(name: "The Interdiver", abilities: [.ModelSailsOnWater, .SilverLegoBlowup]),
                    VehicleVersion(name: "Aerial Spyhunter", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .GoldLegoBlowup])
                    ]
                ),
                Vehicle(name: "Arcade Machine", versions: [
                    VehicleVersion(name: "Arcade Machine", abilities: [.CanUseRetroGamesToCompletePuzzles]),
                    VehicleVersion(name: "8-Bit Shooter", abilities: [.FlyingVehicle]),
                    VehicleVersion(name: "The Pixelator", abilities: [.SpecialAttack])
                    ]
                )
                ]
            ),
            Pack(name: "DC Aquaman Fun Pack", cost: 15, figures: [
                Character(name: "Aquaman", abilities: [.Atlantis, .Dive, .Growth, .HazardCleaner, .DiveAtlantis, .DiveGrowth, .DiveHazardCleaner, .DcComicsWorld]),
                Vehicle(name: "Aqua Watercraft", versions: [
                    VehicleVersion(name: "Aqua Watercraft", abilities: [.ModelCanDiveUnderwater, .ModelSailsOnWater]),
                    VehicleVersion(name: "Seven Seas Speeder", abilities: [.SpecialWeapon, .SpeedBoost]),
                    VehicleVersion(name: "Trident of Fire", abilities: [.SilverLegoBlowup, .SpecialAttack])
                    ]
                )
                ]
            ),
            Pack(name: "DC Superman Fun Pack", cost: 15, figures: [
                Character(name: "Superman", abilities: [.Flying, .Dive, .FreezeBreath, .Invulnerability, .Laser, .SuperStrength, .XrayVision, .DiveFreezeBreath, .DiveInvulnerability, .DiveLaser, .DiveSuperStrength, .DiveXrayVision, .DcComicsWorld]),
                Vehicle(name: "Hover Pod", versions: [
                    VehicleVersion(name: "Hover Pod", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel]),
                    VehicleVersion(name: "Krypton Striker", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SpecialWeapon]),
                    VehicleVersion(name: "Super Stealth Pod", abilities: [.FlightDocksAndFlightCargoHooks, .FlyingModel, .SilverLegoBlowup])
                    ]
                )
                ]
            ),
            Pack(name: "Ghostbusters Stay Puft Fun Pack", cost: 15, figures: [
                Character(name: "Stay Puft", abilities: [.BigTransform, .HazardProtection, .SuperStrength, .GhostbustersWorld]),
                Vehicle(name: "Terror Dog", versions: [
                    VehicleVersion(name: "Terror Dog", abilities: [.Guardian]),
                    VehicleVersion(name: "Terror Dog Destroyer", abilities: [.Dig, .SilverLegoBlowup]),
                    VehicleVersion(name: "Soaring Terror Dog", abilities: [.FlyingVehicle, .SpecialWeapon])
                    ]
                )
                ]
            )
            ]
        ),
        Wave(name: "Wave 5", packs: [
            Pack(name: "Ghostbusters Slimer Fun Pack", cost: 15, figures: [
                Character(name: "Slimer", abilities: [.Boomerang, .Dive, .Flying, .HazardCleaner, .Illumination, .MiniAccess, .SonarSmash, .DiveBoomerang, .DiveHazardCleaner, .DiveIllumination, .DiveMiniAccess, .DiveSonarSmash, .GhostbustersWorld]),
                Item(name: "Slime Shooter", versions: [
                    ItemVersion(name: "Slime Shooter", abilities: [.SlimeBolts, .SpecialAttack]),
                    ItemVersion(name: "Slime Exploder", abilities: [.SlimeBeam]),
                    ItemVersion(name: "Slime Streamer", abilities: [.SilverLegoBlowup, .SlimeBomb])
                    ]
                )
                ]
            ),
            Pack(name: "Ninjago Lloyd Fun Pack", cost: 15, figures: [
                Character(name: "Lloyd", abilities: [.Acrobat, .Illumination, .LaserDeflector, .Spinjitzu, .Stealth, .NinjagoWorld]),
                Vehicle(name: "Lloyd's Golden Dragon", versions: [
                    VehicleVersion(name: "Lloyd's Golden Dragon", abilities: [.FlyingModel]),
                    VehicleVersion(name: "Sword Protector Dragon", abilities: [.FlyingModel, .SpecialAttack]),
                    VehicleVersion(name: "Meta Flight Dragon", abilities: [.FlyingModel, .SpecialWeapon])
                    ]
                )
                ]
            ),
            Pack(name: "DC Bane Fun Pack", cost: 15, figures: [
                Character(name: "Bane", abilities: [.BigTransform, .HazardProtection, .SuperStrength, .DcComicsWorld]),
                Vehicle(name: "Drill Driver", versions: [
                    VehicleVersion(name: "Drill Driver", abilities: [.AcceleratorSwitches, .Dig, .Drill]),
                    VehicleVersion(name: "Bane Dig 'n Drill", abilities: [.Dig, .Drill, .TowBar]),
                    VehicleVersion(name: "Bane Drill 'n Blast", abilities: [.Dig, .Drill, .SilverLegoBlowup, .SpecialAttack])
                    ]
                )
                ]
            )
            ]
        )
    ]
    
}
