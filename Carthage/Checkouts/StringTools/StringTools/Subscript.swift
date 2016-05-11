//
//  Subscript.swift
//  StringTools
//
//  Created by James Bean on 2/24/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

public extension String {
    
    subscript (i: Int) -> Character? {
        if i >= self.characters.count { return nil }
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (i: Int) -> String? {
        let charOrNil: Character? = self[i]
        guard let char = charOrNil else { return nil }
        return String(char as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        return substringWithRange(
            Range(
                startIndex.advancedBy(r.startIndex)..<startIndex.advancedBy(r.endIndex)
            )
        )
    }
}