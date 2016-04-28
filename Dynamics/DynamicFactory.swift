//
//  DynamicFactory.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import Foundation
import ArrayTools
import StringTools

public class DynamicFactory {
    
    public enum Error: ErrorType {
        case InvalidString(String)
        case Empty(String)
        case TooManyCharacters(String)
        case InvalidCharacter(String)
        case InvalidElements(String)
    }
    
    // TODO: isVirtual
    // TODO: isSubito

    private let string: String
    
    public init(string: String) {
        self.string = string
    }
    
    public func makeDynamic() throws -> Dynamic {
        try ensureNotEmpty(string: string)
        let unverifiedElements = try makeUnverifiedElements(withString: string)
        let verifiedElements = try varifyElements(unverifiedElements)
        return Dynamic(elements: verifiedElements)!
    }
    
    // TODO
    private func varifyElements(elements: [DynamicElement]) throws -> [DynamicElement] {
        guard let (head, tail) = elements.destructured else {
            throw Error.InvalidElements(elements.description)
        }
        
        switch head {
        case .Mezzo:
            guard let next = tail.first else { throw Error.InvalidString("") }
            switch next {
            case .Forte: break
            case .Piano: break
            default: throw Error.InvalidString("")
            }
        case .Forte:
            break
        case .Piano: break
        case .Niente: break
            
        case .S: break
        case .R: break
        case .Z: break
        }
        return elements
    }
    

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
    
    private func makeUnverifiedElements(withString string: String) throws -> [DynamicElement] {
        let result = string.characters.flatMap { DynamicElement(rawValue: String($0)) }
        guard result.count == string.characters.count else {
            throw Error.InvalidString(string)
        }
        return result
    }
    
    /*
    private func handleMezzo(withRemainingElements elements: [DynamicElement]) throws {
        guard let (head, tail) = elements.destructured else { throw Error.InvalidString("") }
        guard tail.count == 0 else { throw Error.InvalidString("") }
        switch head {
        case .Piano:
            // success
        case .Forte: break // manage forte
        default: throw Error.InvalidString("Must have 'p' or 'f' after 'm'")
        }
    }
    
    private func handleForte(withRemainingElements elements: [DynamicElement]) throws {
        guard let head = elements.head else { throw Error.InvalidString("") }
        // increment forte ness
        switch head {
        case .Forte: break
        case .Z: break
        default: throw Error.InvalidString("")
        }
    }
    */
    

    private func ensureEmpty(string string: String) throws {
        if string.characters.count > 0 { throw Error.InvalidString(string) }
    }
    
    private func ensureNotEmpty(string string: String) throws {
        if string.characters.count == 0 { throw Error.InvalidString(string) }
    }
}