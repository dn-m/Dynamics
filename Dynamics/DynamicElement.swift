//
//  DynamicElement.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation

/**
 Possible lowest-level elements of a `Dynamic`.
 */
public enum DynamicElement: String {
    
    /**
     Forte. Initialize with the `rawValue` `"f"`.
     */
    case Forte = "f"
    
    /**
     Piano. Initialize with the `rawValue` `"f"`.
     */
    case Piano = "p"
    
    /**
     Mezzo. Initialize with the `rawValue` `"f"`.
     */
    case Mezzo = "m"
    
    /**
     Niente. Initialize with the `rawValue` `"f"`.
     */
    case Niente = "o"
    
    //case R = "r"
    //case S = "s"
    //case Z = "z"
    
    //case ParenthesisLeft = "("
    //case ParenthesisRight = ")"
    
    //case Exclamation = "!"
    //case Subito = "sub"
}
