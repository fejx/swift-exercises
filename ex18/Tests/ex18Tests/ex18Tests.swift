import XCTest
import Foundation
@testable import ex18

class ex18Tests: XCTestCase {
    func NSRangeEquatable() {
        let range1 = NSRange(location: 1, length: 5)
        let range2 = NSRange(location: 1, length: 5)
        let range3 = NSRange(location: 1, length: 7)
        let range4 = NSRange(location: 3, length: 5)

        XCTAssertEqual(range1, range2)
        XCTAssertNotEqual(range2, range3)
        XCTAssertNotEqual(range1, range4)
        XCTAssertNotEqual(range3, range4)
    }


    static var allTests : [(String, (ex18Tests) -> () throws -> Void)] {
        return [
            ("NSRangeEquatable", NSRangeEquatable),
        ]
    }
}
