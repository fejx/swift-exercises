//
//  RangeUtils.swift
//  Exam3
//
//  Created by Karl Traunmüller on 05/02/2017.
//  Copyright © 2017 Swift. All rights reserved.
//

import Foundation

func combinedLength (of ranges: [NSRange]) -> Int {
    return ranges.reduce(0) { length, range in
        length + range.length
    }
}
