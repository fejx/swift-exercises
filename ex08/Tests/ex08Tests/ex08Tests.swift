import XCTest
@testable import ex08

class ex08Tests: XCTestCase {
    func testMap() {
        let numbers = [0, 1, 2, 3, 4]
        let result = numbers.map { $0 * 2 } // 5min exercise for writing 4 chars
        XCTAssertEqual(result, [0, 2, 4, 6, 8])
    }

    static var allTests : [(String, (ex08Tests) -> () throws -> Void)] {
        return [
            ("testMap", testMap),
        ]
    }
}
