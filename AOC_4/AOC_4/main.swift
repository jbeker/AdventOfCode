//
//  main.swift
//  AOC_4
//
//  Created by Jeremy Beker on 12/27/15.
//  Copyright © 2015 Confusticate. All rights reserved.
//

import Foundation

let key = "iwrupvqb"


for i in 0..<Int.max {
    let test = NSString(string: "\(key)\(i)")
    let hash = test.MD5Digest()

    if hash.substringToIndex(hash.startIndex.advancedBy(6)) == "000000" {
        print("hash: \(hash) seed: \(test) index: \(i)")
        break
    }
}
