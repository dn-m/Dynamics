//
//  Dynamic.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation
import StringTools

/**
 Structure defining a single instance of a musical dynamic (e.g., f, p, o, mp, mf).
 
 One or more `DynamicElement` objects are aggregated to create a `Dynamic`.
 
 One or more `Dynamic` objects are aggregated to create a `DynamicAggregate`.
 */
public struct Dynamic {

    // MARK: - Instance Properties
    
    public var isVirtual: Bool = false
    
    private let elements: [DynamicElement]
    
    // MARK: - Initializers
    
    /**
     Create a `Dynamic` with a given `string` value.
     
     - throws: `DynamicFactory.Error` if a `Dynamic` cannot be created with the given `string`.
     */
    public init(string: String) throws {
        self = try DynamicFactory().makeDynamic(withString: string)
    }
    
    /**
     Create a `Dynamic` with given `elements`.
    
     - throws: `DynamicFactory.Error` if a `Dynamic` cannot be create with the given `elements`.
     */
    public init(elements: [DynamicElement]) throws {
        self = try DynamicFactory().makeDynamic(withElements: elements)
    }
    
    internal init(verifiedElements: [DynamicElement]) {
        self.elements = verifiedElements
    }
}

extension Dynamic {
    
    // MARK: Integer Value
    
    private var integerValue: Int {
        if elements == [.Niente] { return Int.min }
        else if elements == [.Mezzo, .Forte] { return 1 }
        else if elements == [.Mezzo, .Piano] { return -1 }
        else if elements.first == .Forte { return elements.count + 1 }
        else if elements.first == .Piano { return -1 * (elements.count + 1) }
        return 0
    }
}

extension Dynamic: Equatable { }

/**
 - returns: `true` if two `Dynamic` values are logically equivalent. Otherwise `false`.
 */
public func == (lhs: Dynamic, rhs: Dynamic) -> Bool {
    return lhs.integerValue == rhs.integerValue
}

extension Dynamic: Comparable { }

/**
 - returns: `true` if the left `Dynamic` value is logically less than the right. 
 Otherwise `false`.
 */
public func < (lhs: Dynamic, rhs: Dynamic) -> Bool {
    return lhs.integerValue < rhs.integerValue
}

extension Dynamic: CustomStringConvertible {
    
    /// Printable description
    public var description: String { return String(elements.map { $0.rawValue }) }
}
