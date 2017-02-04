import XCTest
@testable import ex08

class ex08Tests: XCTestCase {
    func testMap() {
        let numbers = [0, 1, 2, 3, 4]
        let result = numbers.map(double)
        XCTAssertEqual(result, [0, 2, 4, 6, 8])
    }

    static var allTests : [(String, (ex08Tests) -> () throws -> Void)] {
        return [
            ("testMap", testMap),
        ]
    }
}
