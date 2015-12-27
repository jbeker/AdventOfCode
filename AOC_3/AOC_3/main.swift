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

for (count,character) in content.characters.enumerate() {
    switch character {
    case "<":
        santaLocation.x -= 1
    case ">":
        santaLocation.x += 1
    case "^":
        santaLocation.y += 1
    case "v":
        santaLocation.y -= 1
    
    default:
        preconditionFailure()
    }
    
    if let count = locations[santaLocation] {
        locations[santaLocation] = count + 1
    } else {
        locations[santaLocation] = 1
    }
}

print("Houses visited \(locations.count)")




