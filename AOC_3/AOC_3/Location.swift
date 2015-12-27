//
//  Location.swift
//  AOC_3
//
//  Created by Jeremy Beker on 12/27/15.
//  Copyright © 2015 Confusticate. All rights reserved.
//

import Foundation

struct Location: Hashable {
    var x: Int
    var y: Int
    
    init (x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    var hashValue: Int {
        return (31 &* x.hashValue) &+ y.hashValue
    }
    
    mutating func move(c: Character) {
        switch c {
        case "<":
            x -= 1
        case ">":
            x += 1
        case "^":
            y += 1
        case "v":
            y -= 1
            
        default:
            preconditionFailure()
        }
    }
}

func ==(lhs: Location, rhs: Location) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}