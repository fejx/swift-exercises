import Foundation

enum Edit {
    case insertion(location: Int, value: String)
    case deletion(range: NSRange, oldValue: String)
    case replacement(range: NSRange, oldValue: String, newValue: String)

    init(inserting value: String, at location: Int) {
        self = .insertion(location: location, value: value as String)
    }

    init(deleting range: NSRange, in string: NSString) {
        self = .deletion(range: range, oldValue: string.substring(with: range))
    }

    init(replacing range: NSRange, in string: NSString, with newValue: String) {
        self = .replacement(range: range, oldValue: string.substring(with: range), newValue: newValue)
    }

    func apply(to string: NSMutableString) {
        switch self {
            case .insertion(let location, let value):
                string.insert(value, at: location)
            case .deletion(let range, _):
                string.deleteCharacters(in: range)
            case .replacement(let range, _, let newValue):
                string.replaceCharacters(in: range, with: newValue)
        }
    }

    func undo(in string: NSMutableString) {
        switch self {
            case .insertion(let location, let value):
                string.deleteCharacters(in: NSMakeRange(location, value.length))
            case .deletion(let range, let oldValue):
                string.insert(oldValue, at: range.location)
            case .replacement(let range, let oldValue, _):
                let formerRange = NSRange(location: range.location, length: oldValue.length)
                string.replaceCharacters(in: formerRange, with: oldValue)
        }
    }
}

// extending implementation of String struct (fileprivate to avoid collisions in other files, which is good practice)
fileprivate extension String {
    // why the fuck is there no length anyways?
    var length: Int {
        return self.characters.count
    }
}
