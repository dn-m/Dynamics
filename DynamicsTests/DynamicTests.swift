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
            let _ = try Dynamic([])
            XCTFail()
        } catch {
            
        }
    }
    
    func testInitWithElementsPiano() {
        do { let _ = try Dynamic([.Piano]) } catch { XCTFail() }
    }
    
    func testInitWithElementsForte() {
        do { let _ = try Dynamic([.Forte]) } catch { XCTFail() }
    }
    
    func testInitWithElementsNiente() {
        do { let _ = try Dynamic([.Niente]) } catch { XCTFail() }
    }
    
    func testInitWithElementsMezzoPiano() {
        do { let _ = try Dynamic([.Mezzo, .Piano]) } catch { XCTFail() }
    }
    
    func testInitWithElementsMezzoForte() {
        do { let _ = try Dynamic([.Mezzo, .Forte]) } catch { XCTFail() }
    }
    
    func testInitWithElementsFortissimo() {
        do { let _ = try Dynamic([.Forte, .Forte]) } catch { XCTFail() }
    }
    
    func testInitWithElementsPianissimo() {
        do { let _ = try Dynamic([.Piano, .Piano]) } catch { XCTFail() }
    }
    
    func testInitWithNienteFollowedByPiano() {
        do {
            let _ = try Dynamic([.Niente, .Piano])
            XCTFail()
        } catch { }
    }
    
    func testInitWithNienteFollowedByForte() {
        do {
            let _ = try Dynamic([.Niente, .Forte])
            XCTFail()
        } catch { }
    }
    
    // MARK: - Init with String
    
    func testInitWithEmptyThrows() {
        do {
            let _ = try Dynamic("")
            XCTFail()
        } catch { }
    }
    
    func testInitWithStringP() {
        do { let _ = try Dynamic("p") } catch { XCTFail() }
    }
    
    func testInitWithStringPPP() {
        do { let _ = try Dynamic("ppp") } catch {
            print(error)
            XCTFail()
        }
    }
    
    func testInitWithStringF() {
        do { let _ = try Dynamic("f") } catch { XCTFail() }
    }
    
    func testInitWithStringFFF() {
        do { let _ = try Dynamic("fff") } catch { XCTFail() }
    }
    
    func testInitWithStringO() {
        do { let _ = try Dynamic("o") } catch { XCTFail() }
    }
}
