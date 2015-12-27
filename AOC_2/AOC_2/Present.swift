//
//  Present.swift
//  AOC_2
//
//  Created by Jeremy Beker on 12/27/15.
//  Copyright © 2015 Confusticate. All rights reserved.
//

import Foundation

struct Present {
    private let _height: Int
    private let _width: Int
    private let _length: Int
    
    init(length: Int, width: Int, height: Int ) {
        _height = height
        _width = width
        _length = length
    }
    
    var areaRequired: Int {
        var sides: [Int] = []
        
        sides.append(2 * _length * _width)
        sides.append(2 * _width * _height)
        sides.append(2 * _height * _length)
        
        guard let minimum = sides.minElement() else { preconditionFailure() }
        
        sides.append(minimum/2)
        
        return sides.reduce(0, combine: { return $0 + $1 })
    }
    
    var ribbonRequired: Int {
        var sides : [Int] = []
        
        sides.append(_length + _width)
        sides.append(_width + _height)
        sides.append(_height + _length)
        
        guard let minimum = sides.minElement() else { preconditionFailure() }

        
        
        return (minimum * 2) + (_height*_width*_length)
    }
    
}