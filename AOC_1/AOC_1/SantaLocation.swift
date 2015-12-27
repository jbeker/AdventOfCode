//
//  SantaLocation.swift
//  AOC_1
//
//  Created by Jeremy Beker on 12/27/15.
//  Copyright © 2015 Confusticate. All rights reserved.
//

import Foundation

class SantaLocation {
    var _floor: Int = 0
    
    var floor: Int {
        return _floor
    }
    
    func move(c: Character) {
        switch c {
        case "(":
            _floor += 1
        case ")":
            _floor -= 1
        default:
            preconditionFailure()
        }
    }
}