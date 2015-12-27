//
//  main.swift
//  AOC_2
//
//  Created by Jeremy Beker on 12/27/15.
//  Copyright © 2015 Confusticate. All rights reserved.
//

import Foundation


guard Process.arguments.count == 2 else { preconditionFailure() }
guard let stream = StreamReader(path: Process.arguments[1]) else { preconditionFailure() }

defer { stream.close() }

var presents: [Present] = []

for line in stream {
    let dimensions = line as NSString
    
    let components = dimensions.componentsSeparatedByString("x").map({ val -> Int in
        if let value = Int(val) {
            return value
        }
        return 0
    })
    
    if components.count != 3 { preconditionFailure() }

    presents.append(Present(length: components[0], width: components[1], height: components[2]))
}

let paper = presents.reduce(0, combine: { return $0 + $1.areaRequired })
let ribbon = presents.reduce(0, combine: { return $0 + $1.ribbonRequired })

print("Total paper required: \(paper) sqft")
print("Total ribbon required: \(ribbon) feet")


