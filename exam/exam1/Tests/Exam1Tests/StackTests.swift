//
//  StackTests.swift
//  Exam1Tests
//
//  Created by Karl Traunmüller on 05/02/2017.
//  Copyright © 2017 Swift. All rights reserved.
//

import XCTest
@testable import Exam1

class StackTests: XCTestCase {
    
    func testEmpty() {
        var stack = Stack<Int>()
        XCTAssertTrue(stack.isEmpty)
        stack.push(1)
        XCTAssertFalse(stack.isEmpty)
    }
    
    func testTop() {
        var stack = Stack<Int>()
        XCTAssertNil(stack.top)
        stack.push(1)
        XCTAssertEqual(stack.top, 1)
    }
    
    func testPop() {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        XCTAssertEqual(stack.pop(), 2)
        XCTAssertEqual(stack.pop(), 1)
        XCTAssertNil(stack.pop())
        XCTAssertTrue(stack.isEmpty)
    }
    
    func testEqual() {
        var stack1 = Stack<Int>()
        var stack2 = Stack<Int>()
        XCTAssertTrue(stack1 == stack2)
        
        stack1.push(1)
        stack1.push(2)
        XCTAssertFalse(stack1 == stack2)
        
        stack2.push(1)
        stack2.push(2)
        XCTAssertTrue(stack1 == stack2)
    }

    // Note: uncomment the following method and check if it results in a compiler error
//    func testEqualityNotDefined() {
//        var stack1 = Stack<Foo>()
//        var stack2 = Stack<Foo>()
//        XCTAssertTrue(stack1 == stack2) // <- this line should cause a compiler error
//    }

    static var allTests : [(String, (StackTests) -> () throws -> Void)] {
        return [
            ("testEmpty", testEmpty),
            ("testTop", testTop),
            ("testPop", testPop),
            ("testEqual", testEqual)
        ]
    }
}

final class Foo {
}
