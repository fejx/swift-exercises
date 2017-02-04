import XCTest
@testable import ex19

class ex19Tests: XCTestCase {
    func testFibonacciSequence() {
        // this means fib is of type sequence<Int, (Int, Int)>
        let fib = sequence(state: (1, 0), next: { (state: inout (Int, Int)) -> Int? in
            let (value1, value2) = state
            state = (value2, value1 + value2)
            return value1 + value2
            /* little variation (sample solution)
            let result = state.0 + state.1
            state = (state.1, result)
            return result
            */
        })
        let f7 = Array(fib.prefix(7))
        XCTAssertEqual(f7, [1, 1, 2, 3, 5, 8, 13])
    }


    static var allTests : [(String, (ex19Tests) -> () throws -> Void)] {
        return [
            ("testFibonacciSequence", testFibonacciSequence),
        ]
    }
}
