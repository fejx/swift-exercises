import Foundation

extension NSRange: Equatable {
    public static func ==(lhs: NSRange, rhs: NSRange) -> Bool {
        return lhs.location == rhs.location && lhs.length == rhs.length
    }
}