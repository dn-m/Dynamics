//
//  DynamicInterpolation.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation

public struct DynamicInterpolation {
    
    public enum Direction {
        case Crescendo, Decrescendo, Static
        
        init(_ start: Dynamic, _ stop: Dynamic) {
            if start == stop { self = .Static }
            else if start < stop { self = .Crescendo }
            else { self = .Decrescendo }
        }
    }
    
    public let startDynamic: Dynamic
    public let stopDynamic: Dynamic
    public let direction: Direction
    
    public init(from start: Dynamic, to stop: Dynamic) {
        self.startDynamic = start
        self.stopDynamic = stop
        self.direction = Direction(start, stop)
    }
}