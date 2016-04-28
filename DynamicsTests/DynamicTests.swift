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
        XCTAssertNil(Dynamic(elements: []))
    }
    
    func testInitWithElementsPiano() {
        XCTAssertNotNil(Dynamic(elements: [.Piano]))
    }
    
    func testInitWithElementsForte() {
        XCTAssertNotNil(Dynamic(elements: [.Forte]))
    }
    
    func testInitWithElementsNiente() {
        XCTAssertNotNil(Dynamic(elements: [.Niente]))
    }
    
    func testInitWithElementsMezzoPiano() {
        XCTAssertNotNil(Dynamic(elements: [.Mezzo, .Piano]))
    }
    
    func testInitWithElementsMezzoForte() {
        XCTAssertNotNil(Dynamic(elements: [.Mezzo, .Forte]))
    }
    
    func testInitWithElementsFortissimo() {
        XCTAssertNotNil(Dynamic(elements: [.Forte, .Forte]))
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

