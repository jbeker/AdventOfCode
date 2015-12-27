//
//  main.swift
//  AOC_3
//
//  Created by Jeremy Beker on 12/27/15.
//  Copyright © 2015 Confusticate. All rights reserved.
//

import Foundation

guard Process.arguments.count == 2 else { preconditionFailure() }
guard let content = try? String(contentsOfFile: Process.arguments[1], encoding: NSASCIIStringEncoding) else { preconditionFailure() }

var locations = Dictionary<Location,Int>()

var santaLocation = Location(x: 0,y: 0)
var robotLocation = Location(x: 0,y: 0)

for (count,character) in content.characters.enumerate() {
    switch count {
    case _ where count % 2 == 0:
        santaLocation.move(character)
        
        if let count = locations[santaLocation] {
            locations[santaLocation] = count + 1
        } else {
            locations[santaLocation] = 1
        }
    case _ where count % 2 == 1:
        robotLocation.move(character)
        
        if let count = locations[robotLocation] {
            locations[robotLocation] = count + 1
        } else {
            locations[robotLocation] = 1
        }
        
    default:
        preconditionFailure()
    }
    
}

print("Houses visited \(locations.count)")




