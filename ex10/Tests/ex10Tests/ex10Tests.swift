import XCTest
import Foundation
@testable import ex10

class ex10Tests: XCTestCase {
    func testInsert() {
        let string: NSMutableString = "abc"
        let insert1 = Edit(inserting: "d", at: 0)
        insert1.apply(to: string)
        XCTAssertEqual(string, "dabc")
        let insert2 = Edit(inserting: "e", at: 4)
        insert2.apply(to: string)
        XCTAssertEqual(string, "dabce")
        insert2.undo(in: string)
        XCTAssertEqual(string, "dabc")
        insert1.undo(in: string)
        XCTAssertEqual(string, "abc")
    }

    static var allTests : [(String, (ex10Tests) -> () throws -> Void)] {
        return [
            ("testInsert", testInsert),
        ]
    }
}
