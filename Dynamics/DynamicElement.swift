//
//  DynamicElement.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation

public enum DynamicElement: String {
    
    case Forte = "f"
    case Piano = "p"
    case Mezzo = "m"
    case Niente = "o"
    
    case R = "r"
    case S = "s"
    case Z = "z"
    
    //case ParenthesisLeft = "("
    //case ParenthesisRight = ")"
    
    //case Exclamation = "!"
    //case Subito = "sub"
}

extension DynamicElement: Equatable { }

public func == (lhs: DynamicElement, rhs: DynamicElement) -> Bool {
    return false
}