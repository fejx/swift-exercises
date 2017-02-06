//
//  GeometryTests.swift
//  Exam4Tests
//
//  Created by Karl Traunmüller on 05/02/2017.
//  Copyright © 2017 Swift. All rights reserved.
//

import XCTest

@testable import exam4

class GeometryTests: XCTestCase {

    func testAspectRatio() {
        let rect1 = Rect(x: 10, y: 10, width: 30, height: 20)
        XCTAssertEqual(rect1.aspectRatio, 1.5)
        
        let rect2 = Rect(x: 0, y: 0, width: 0, height: 0)
        XCTAssertTrue(rect2.aspectRatio.isNaN)
    }

    static var allTests : [(String, (GeometryTests) -> () throws -> Void)] {
        return [
            ("testAspectRatio", testAspectRatio),
        ]
    }
    
}
