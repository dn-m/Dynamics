//
//  DynamicTests.swift
//  Dynamics
//
//  Created by James Bean on 4/27/16.
//
//

import XCTest
@testable import Dynamics

class DynamicTests: XCTestCase {

    // MARK: - Init with Elements
    
    func testInitWithEmptyElements() {
        do {
            let _ = try Dynamic(elements: [])
            XCTFail()
        } catch {
            
        }
    }
    
    func testInitWithElementsPiano() {
        XCTAssertNotNil(try Dynamic(elements: [.Piano]))
    }
    
    func testInitWithElementsForte() {
        XCTAssertNotNil(try Dynamic(elements: [.Forte]))
    }
    
    func testInitWithElementsNiente() {
        XCTAssertNotNil(try Dynamic(elements: [.Niente]))
    }
    
    func testInitWithElementsMezzoPiano() {
        XCTAssertNotNil(try Dynamic(elements: [.Mezzo, .Piano]))
    }
    
    func testInitWithElementsMezzoForte() {
        XCTAssertNotNil(try Dynamic(elements: [.Mezzo, .Forte]))
    }
    
    func testInitWithElementsFortissimo() {
        do {
            let _ = try Dynamic(elements: [.Forte, .Forte])
        } catch {
            print(error)
            XCTFail()
        }
    }
    
    func testInitWithElementsPianissimo() {
        do {
            let _ = try Dynamic(elements: [.Piano, .Piano])
        } catch {
            print(error)
            XCTFail()
        }
    }
    
    func testInitWithNienteFollowedByPiano() {
        do {
            let _ = try Dynamic(elements: [.Niente, .Piano])
            XCTFail()
        } catch { }
    }
    
    func testInitWithNienteFollowedByForte() {
        do {
            let _ = try Dynamic(elements: [.Niente, .Forte])
            XCTFail()
        } catch { }
    }
    
    // MARK: - Init with String
    
    func testInitWithEmptyThrows() {
        do {
            let _ = try Dynamic(string: "")
            XCTFail()
        } catch { }
    }
    
    func testInitWithStringP() {
        do { let _ = try Dynamic(string: "p") } catch { XCTFail() }
    }
    
    func testInitWithStringF() {
        do { let _ = try Dynamic(string: "f") } catch { XCTFail() }
    }
    
    func testInitWithStringO() {
        do { let _ = try Dynamic(string: "o") } catch { XCTFail() }
    }
}
