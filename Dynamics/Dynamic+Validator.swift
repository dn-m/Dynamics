//
//  Dynamic+Validator.swift
//  Dynamics
//
//  Created by James Bean on 1/3/17.
//
//

import Collections

extension Dynamic {
    
    internal struct Validator {
        
        // Ensure `Dynamic.Element` values are well-formed in order to construct `Dynamic`.
        internal static func elementsAreWellFormed(_ elements: [Dynamic.Element]) -> Bool {
            
            guard let (head, tail) = elements.destructured else {
                return false
            }
            
            switch head {
            case .niente:
                return tail.isEmpty
            case .mezzo:
                return tail == [.forte] || tail == [.piano]
            default:
                return tail.isHomogeneous
            }
        }
    }
}
