//
//  RangeUtilsTests.swift
//  Exam3Tests
//
//  Created by Karl Traunmüller on 05/02/2017.
//  Copyright © 2017 Swift. All rights reserved.
//

import XCTest
import Foundation
@testable import exam3

class RangeUtilsTests: XCTestCase {
    
    func testCombinedLengthOfRanges() {
        let range1 = NSRange(location: 0, length: 2)
        let range2 = NSRange(location: 5, length: 3)
        XCTAssertEqual(combinedLength(of: [range1, range2]), 5)
    }

    static var allTests : [(String, (RangeUtilsTests) -> () throws -> Void)] {
        return [
            ("testCombinedLengthOfRanges", testCombinedLengthOfRanges),
        ]
    }
}
