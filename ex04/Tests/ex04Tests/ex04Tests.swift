import XCTest
@testable import ex04

class ex04Tests: XCTestCase {
    
    func testPoint() {
        let p1 = Point(x: 1, y: 0) 
        let p2 = Point(x: 2, y: 0)
        XCTAssertFalse(p1 == p2)
    }

    static var allTests : [(String, (ex04Tests) -> () throws -> Void)] {
        return [
            ("testPoint", testPoint),
        ]
    }
}
