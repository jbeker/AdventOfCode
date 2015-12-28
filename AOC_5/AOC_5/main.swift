//
//  main.swift
//  AOC_5
//
//  Created by Jeremy Beker on 12/28/15.
//  Copyright © 2015 Confusticate. All rights reserved.
//

import Foundation

guard Process.arguments.count == 2 else { preconditionFailure() }
guard let stream = StreamReader(path: Process.arguments[1]) else { preconditionFailure() }

defer { stream.close() }

var naughtyCount = 0
var niceCount = 0

//let t = SantaDecider(word: "aacuiiwgaannunmm")
//
//t.decide

for line in stream {
    let decider = SantaDecider(word: line)
    
    switch decider.decide {
    case .Naughty:
        naughtyCount += 1
    case .Nice:
        niceCount += 1
    }
}

print("Nice: \(niceCount) Naughty: \(naughtyCount)")

