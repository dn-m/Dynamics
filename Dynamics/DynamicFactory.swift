//
//  DynamicFactory.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Collections

/*
// TODO: Refactor (not really a Factory...)
internal class DynamicFactory {
    
    // TODO: refine cases
    internal enum Error: Swift.Error {
        case invalidString(String)
        case empty(String)
        case tooManyCharacters(String)
        case invalidCharacter(String)
        case invalidElements(String)
    }
    
    // TODO: isVirtual
    // TODO: isSubito

    fileprivate var string: String = ""
    
    internal init() { }
    
    // TODO: check if isVirtual
    internal func makeDynamic(withString string: String) throws -> Dynamic {
        try ensureNotEmpty(string: string)
        let unverifiedElements = try makeUnverifiedElements(withString: string)
        return try makeDynamic(withElements: unverifiedElements)
    }
    
    internal func makeDynamic(withElements elements: [DynamicElement]) throws -> Dynamic {
        let verifiedElements = try verifyElements(elements)
        return Dynamic(verifiedElements: verifiedElements)
    }
    
    fileprivate func verifyElements(_ elements: [DynamicElement]) throws -> [DynamicElement] {
       
        guard let (head, tail) = elements.destructured else {
            throw Error.invalidString(string)
        }
        
        switch head {
        case .mezzo: try ensureNextPianoOrForte(forElements: tail)
        case .forte, .piano: try ensureHomogeneous(elements)
        case .niete: try ensureEmpty(elements: tail)
        }
        
        return elements
    }
    
    fileprivate func ensureEmpty(elements: [DynamicElement]) throws {
        if !elements.isEmpty { throw Error.invalidString(string) }
    }
    
    fileprivate func ensureNextPianoOrForte(forElements elements: [DynamicElement]) throws {
        guard let next = elements.first else { throw Error.invalidString(string) }
        switch next {
        case .piano, .forte: break
        default: throw Error.invalidString(string)
        }
    }
    
    fileprivate func ensureHomogeneous(_ elements: [DynamicElement]) throws {
        if elements.isHeterogeneous { throw Error.invalidString(string) }
    }
    
    /*
    private func checkVirtuality(withString string: String) throws -> Bool {
        guard string.characters.count > 2 else { throw Error.InvalidString(string) }
        switch string.characters.first! {
        case "(":
            switch string.characters.last! {
            case ")": return true
            default: throw Error.InvalidString(string)
            }
        default: return false
        }
    }
    */
    
    fileprivate func makeUnverifiedElements(withString string: String) throws -> [DynamicElement] {
        let result = string.characters.flatMap { DynamicElement(rawValue: String($0)) }
        if result.count != string.characters.count { throw Error.invalidString(string) }
        return result
    }
    
    fileprivate func ensureNotEmpty(string: String) throws {
        if string.characters.count == 0 { throw Error.empty(string) }
    }
}
*/
