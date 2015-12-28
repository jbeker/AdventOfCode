//
//  SantaDecider.swift
//  AOC_5
//
//  Created by Jeremy Beker on 12/28/15.
//  Copyright © 2015 Confusticate. All rights reserved.
//

import Foundation

enum Behavior {
    case Naughty
    case Nice
}

struct SantaDecider {
    private let _word: NSString
    
    private let vowels = NSCharacterSet(charactersInString: "aeiou")
    private let doubles: [String] = "abcdefghijklmnopqrstuvwxyz".characters.map { return "\($0)\($0)" }
    private let banned = ["ab","cd","pq","xy"]
    
    init (word: String) {
        _word = word
    }
    
    var decide: Behavior {
        
        if vowelCount() < 3 { return .Naughty }
        if !hasDoubleLetter() { return .Naughty }
        if hasBanned() { return .Naughty }
        
        return .Nice
    }
    
    private func hasDoubleLetter() -> Bool {
        
        for double in doubles {
            if _word.containsString(double) { return true }
        }
        
        return false
    }
    
    private func hasBanned() -> Bool {
        for bad in banned {
            if _word.containsString(bad) { return true }
        }
        
        return false
    }
    
    private func vowelCount() -> Int {
        var range = _word.rangeOfCharacterFromSet(vowels)
        var count = 0
        
        while range.location != NSNotFound {
            count += 1
            let searchRange = NSMakeRange(NSMaxRange(range), _word.length - NSMaxRange(range))
            range = _word.rangeOfCharacterFromSet(vowels, options: [], range: searchRange)
        }
        
        return count
    }
    
    
}