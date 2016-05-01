//
//  DynamicInterpolationTests.swift
//  Dynamics
//
//  Created by James Bean on 5/1/16.
//
//

import XCTest
@testable import Dynamics

class DynamicInterpolationTests: XCTestCase {

    func testInit() {
        let i = DynamicInterpolation(from: try! Dynamic("ff"), to: try! Dynamic("pp"))
        
    }
}
