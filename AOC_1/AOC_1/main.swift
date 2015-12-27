//
//  main.swift
//  AOC_1
//
//  Created by Jeremy Beker on 12/27/15.
//  Copyright © 2015 Confusticate. All rights reserved.
//

import Foundation

guard Process.arguments.count == 2 else { preconditionFailure() }
guard let content = try? String(contentsOfFile: Process.arguments[1], encoding: NSASCIIStringEncoding) else { preconditionFailure() }


let santa = SantaLocation()

for (count,character) in content.characters.enumerate() {
    santa.move(character)
    if santa.floor == -1 {
        print("First time basement floor: \(count+1)")
        break
    }
}

