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
        do { let _ = try Dynamic(elements: [.Piano]) } catch { XCTFail() }
    }
    
    func testInitWithElementsForte() {
        do { let _ = try Dynamic(elements: [.Forte]) } catch { XCTFail() }
    }
    
    func testInitWithElementsNiente() {
        do { let _ = try Dynamic(elements: [.Niente]) } catch { XCTFail() }
    }
    
    func testInitWithElementsMezzoPiano() {
        do { let _ = try Dynamic(elements: [.Mezzo, .Piano]) } catch { XCTFail() }
    }
    
    func testInitWithElementsMezzoForte() {
        do { let _ = try Dynamic(elements: [.Mezzo, .Forte]) } catch { XCTFail() }
    }
    
    func testInitWithElementsFortissimo() {
        do { let _ = try Dynamic(elements: [.Forte, .Forte]) } catch { XCTFail() }
    }
    
    func testInitWithElementsPianissimo() {
        do { let _ = try Dynamic(elements: [.Piano, .Piano]) } catch { XCTFail() }
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
    
    func testInitWithStringPPP() {
        do { let _ = try Dynamic(string: "ppp") } catch {
            print(error)
            XCTFail()
        }
    }
    
    func testInitWithStringF() {
        do { let _ = try Dynamic(string: "f") } catch { XCTFail() }
    }
    
    func testInitWithStringFFF() {
        do { let _ = try Dynamic(string: "fff") } catch { XCTFail() }
    }
    
    func testInitWithStringO() {
        do { let _ = try Dynamic(string: "o") } catch { XCTFail() }
    }
}
