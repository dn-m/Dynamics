//
//  Dynamic.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation
import StringTools

public struct Dynamic {

    public var isVirtual: Bool = false
    private let elements: [DynamicElement]
    
    public init?(elements: [DynamicElement]) {
        guard elements.count > 0 else { return nil }
        self.elements = elements
    }
    
    public init(string: String) throws {
        self = try DynamicFactory(string: string).makeDynamic()
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

public func == (lhs: Dynamic, rhs: Dynamic) -> Bool {
    return lhs.integerValue == rhs.integerValue
}

extension Dynamic: Comparable { }

public func < (lhs: Dynamic, rhs: Dynamic) -> Bool {
    return lhs.integerValue < rhs.integerValue
}

extension Dynamic: CustomStringConvertible {
    
    public var description: String { return String(elements.map { $0.rawValue }) }
}
