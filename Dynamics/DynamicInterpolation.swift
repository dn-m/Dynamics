//
//  DynamicInterpolation.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation

/**
 Structure defining the interpolation between to `Dynamic` objects. Rendered traditionally as
 a "hairpin".
 */
public struct DynamicInterpolation {
    
    /**
     Direction of interpolation.
     */
    public enum Direction {
        
        /**
         Crescendo.
         */
        case crescendo
        
        /**
         Decrescendo.
         */
        case decrescendo
        
        /**
         Static.
         */
        case `static`
        
        /**
         Create a `Direction` with `start` and `stop` `Dynamic` values.
         */
        init(_ start: Dynamic, _ stop: Dynamic) {
            self = start == stop ? .static : start < stop ? .crescendo : .decrescendo
        }
    }
    
    // MARK: - Instance properties
    
    /// `Dynamic` object at start of interpolation.
    public let startDynamic: Dynamic
    
    /// `Dynamic` object at stop of interpolation.
    public let stopDynamic: Dynamic
    
    /// `Direction` of interpolation.
    public let direction: Direction
    
    // TODO: public let curve (exponent) (DynamicInterpolationFunction)
    
    // MARK: - Initializers
    
    /**
     Create a `DynamicInterpolation` with `start` and `stop` `Dynamic` values.
     */
    public init(from start: Dynamic, to stop: Dynamic) {
        self.startDynamic = start
        self.stopDynamic = stop
        self.direction = Direction(start, stop)
    }
    
    // TODO: public func dynamicValueAt(proportion ? )
}
