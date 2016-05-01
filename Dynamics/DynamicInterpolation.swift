//
//  DynamicInterpolation.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation

public struct DynamicInterpolation {
    
    public let startDynamic: Dynamic
    public let stopDynamic: Dynamic
    
    public init(from start: Dynamic, to stop: Dynamic) {
        self.startDynamic = start
        self.stopDynamic = stop
    }
}