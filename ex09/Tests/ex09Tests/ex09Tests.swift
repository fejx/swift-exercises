import XCTest
@testable import ex09

typealias UnaryFunction<T> = (_ arg: T) -> T

func apply<T>(_ f: UnaryFunction<T>, to elements: [T]) -> [T] { 
    return elements.map(f)
}

class ex09Tests: XCTestCase {
    /*
        Actual solution in ../../Sources/ex09.swift
        BUT: This can also be achieved with closures. In this case, there are some possible variations:
    */
    
    // defined as closure with type annotation
    let squareClosure: UnaryFunction<Int> = { (element: Int) -> Int in
        return element * element
    }
    
    // the type annotation can be omitted, of course:
    let squareNoTypeAnnotation = { (element: Int) -> Int in
        return element * element
    }

    // however, the types in the function signature can be inferred from the type annotation:
    let squareSignatureInference: UnaryFunction<Int> = { element in element * element }

    // BUT:
    // let squareAllInferred = { element in element * element }
    // would be too much omission, the type has to be specified somewhere (compiler says ambiguous use of * operator)

    // best solution probably is
    let squareShort: UnaryFunction<Int> = { $0 * $0 }
    // $0 means 'first parameter of the function' (also works with $1, $2 etc.)

    func testApplySquare() { 
        let numbers = [0, 1, 2, 3, 4]
        let result = apply(square, to: numbers)
        // most awesome solution
        // let result = apply({ $0 * $0 }, to: numbers)

        XCTAssertEqual(result, [0, 1, 4, 9, 16])
    }

    static var allTests : [(String, (ex09Tests) -> () throws -> Void)] {
        return [
            ("testApplySquare", testApplySquare),
        ]
    }
}
