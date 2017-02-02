// the CoreGraphics module unfortunately does not exist in this environment
struct CGPoint {
    var x: Int
    var y: Int

    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

