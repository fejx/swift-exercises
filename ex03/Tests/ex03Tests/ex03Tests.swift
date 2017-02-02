import XCTest
@testable import ex03

class ex03Tests: XCTestCase {

	var p: CGPoint!
	
	override func setUp() {
		p = CGPoint(1, 5)
	}

	func testImplicitlyUnwrappedOptional() { 
		XCTAssertEqual(p.x, 1)
	}


    static var allTests : [(String, (ex03Tests) -> () throws -> Void)] {
        return [
            ("testImplicitlyUnwrappedOptional", testImplicitlyUnwrappedOptional),
        ]
    }
}
