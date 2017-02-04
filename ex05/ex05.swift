public enum HttpStatusCode: Equatable {
    case informational(Int)
    case success(Int)
    case redirection(Int)
    case clientError(Int)
    case serverError(Int)

    var statusCode: Int {
        // unfortunately, these have to be declared for each case
        switch self {
            case .informational(let status):
                return status
            case .success(let status):
                return status
            case .redirection(let status):
                return status
            case .clientError(let status):
                return status
            case .serverError(let status):
                return status
        }
    }

    // init? means that the initializer may return nil if initialization is not possible (failable initializer)
    init?(_ value: Int) {
        switch value {
            case 1...100: // 100 is still within 1...100, but not within 1..<100
                self = .informational(value)
            case 100...200:
                self = .success(value)
            case 200...300:
                self = .redirection(value)
            case 300...400:
                self = .clientError(value)
            case 500...600:
                self = .serverError(value)
            default:
                return nil // if error code is negative or 600 or higher, return nil to show initialization has failed
        }
    }

    // as already mentioned in ex04, Equatable can be implemented in two ways
    public static func==(lhs: HttpStatusCode, rhs: HttpStatusCode) -> Bool {
        return lhs.statusCode == rhs.statusCode
    }
}

// alternative Equatable function
/*public func==(lhs: HttpStatusCode, rhs: HttpStatusCode) -> Bool {
    return lhs.statusCode == rhs.statusCode
}*/
