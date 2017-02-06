//
//  Leak.swift
//  Exam2
//
//  Created by Karl Traunmüller on 05/02/2017.
//  Copyright © 2017 Swift. All rights reserved.
//

import Foundation

final class ReferenceType {
    
    static var instanceCount = 0
    
    var closure: (() -> Void)?
    
    init() {
        print("\(self).init")
        ReferenceType.instanceCount += 1
    }
    
    deinit {
        print("\(self).deinit")
        ReferenceType.instanceCount -= 1
    }
    
    func captureSelf() {
        closure = {
            self.foo()
        }
    }
    
    func foo() {
        print("foo")
    }
}
