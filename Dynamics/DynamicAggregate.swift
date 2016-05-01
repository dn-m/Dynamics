//
//  DynamicAggregate.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation

public struct DynamicAggregate {
    
    private let dynamics: [Dynamic]
    private let anteriorDynamic: Dynamic
    private let posteriorDynamic: Dynamic
    
    public init?(dynamics: Dynamic...) {
        self.init(dynamics: dynamics)
    }
    
    // TODO: ensure > 0 dynamics
    public init?(dynamics: [Dynamic]) {
        guard dynamics.count > 0 else { return nil }
        self.dynamics = dynamics
        self.anteriorDynamic = dynamics.first!
        self.posteriorDynamic = dynamics.last!
    }
}