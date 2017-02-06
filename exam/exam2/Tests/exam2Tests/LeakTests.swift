//
//  LeakTests.swift
//  Exam2Tests
//
//  Created by Karl Traunmüller on 05/02/2017.
//  Copyright © 2017 Swift. All rights reserved.
//

import XCTest
@testable import exam2

class LeakTests: XCTestCase {
    
    override func tearDown() {
        ReferenceType.instanceCount = 0
    }
    
    func testStrongReference() {
        var reference: ReferenceType? = ReferenceType()
        XCTAssertNotNil(reference)
        XCTAssertEqual(ReferenceType.instanceCount, 1)
        
        let strongReference = reference
        reference = nil
        XCTAssertNotNil(strongReference)
        XCTAssertEqual(ReferenceType.instanceCount, 1)
    }
    
    func testWeakReference() {
        var reference: ReferenceType? = ReferenceType()
        XCTAssertNotNil(reference)
        XCTAssertEqual(ReferenceType.instanceCount, 1)
        
        weak var weakReference = reference
        reference = nil
        XCTAssertNil(weakReference)
        XCTAssertEqual(ReferenceType.instanceCount, 0)
    }
    
    func testClosureCapturingSelf() {
        var reference: ReferenceType? = ReferenceType()
        reference?.captureSelf()
        reference = nil
        XCTAssertEqual(ReferenceType.instanceCount, 0)
    }

    static var allTests : [(String, (LeakTests) -> () throws -> Void)] {
        return [
            ("testStrongReference", testStrongReference),
            ("testWeakReference", testWeakReference),
            ("testClosureCapturingSelf", testClosureCapturingSelf)
        ]
    }
}
