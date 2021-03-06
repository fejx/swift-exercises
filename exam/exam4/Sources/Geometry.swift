//
//  Geometry.swift
//  Exam4
//
//  Created by Karl Traunmüller on 05/02/2017.
//  Copyright © 2017 Swift. All rights reserved.
//

import Foundation

extension CGRect {
    var aspectRatio: Double {
        get {
            return Double(width) / Double(height)
        }
    }
}
