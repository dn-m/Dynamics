//
//  DynamicAggregate.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation

/**
 Structure of one or more `Dynamic` objects.
 */
public struct DynamicAggregate {
    
    private let dynamics: [Dynamic]
    private let anteriorDynamic: Dynamic
    private let posteriorDynamic: Dynamic
    
    /**
     Create a `DynamicAggregate` with one or more `Dynamic` objects.

     - returns: `nil` if there are zero `Dynamic` objects given.
     */
    public init?(dynamics: Dynamic...) {
        self.init(dynamics: dynamics)
    }
    
    /**
     Create a `DynamicAggregate` with an array of one or more `Dynamic` objects.
     
     - returns: `nil` if there are zero `Dynamic` objects given.
     */
    public init?(dynamics: [Dynamic]) {
        guard dynamics.count > 0 else { return nil }
        self.dynamics = dynamics
        self.anteriorDynamic = dynamics.first!
        self.posteriorDynamic = dynamics.last!
    }
}