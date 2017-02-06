//
//  Stack.swift
//  Exam1
//
//  Created by Karl Traunmüller on 05/02/2017.
//  Copyright © 2017 Swift. All rights reserved.
//

import Foundation

struct Stack<Element> {
    fileprivate(set) var data: [Element] = []
    
    var top: Element? {
        get {
            return data.last
        }
    }

    var isEmpty: Bool {
        get {
            return data.count == 0
        }
    }

    mutating func push(_ element: Element) {
        data.append(element)
    }

    mutating func pop() -> Element? {
        if isEmpty {
            return nil
        }
        
        let element = data.last
        data.removeLast()
        return element
    }

    
}

func ==<Element: Equatable>(lhs: Stack<Element>, rhs: Stack<Element>) -> Bool {
        return lhs.data == rhs.data
}
