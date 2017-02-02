struct Point: Equatable {
    let x: Float
    let y: Float

    // Equatable can be implemented either as static method:
    static func ==(_ lhs: Point, _ rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

// or as function:
/*func ==(_ lhs: Point, _ rhs: Point) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}*/

// (both at the same time would cause an error, obviously)
