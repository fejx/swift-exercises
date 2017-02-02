func write(_ s: String?) {
    if let s = s {
        print("Value is \(s)")
    } else {
        print("No value given")
    }
}

func process(_ i: Int?) {
    guard let i = i else {
        print("Could not continue: i is nil")
        return
    }

    print("Processing \(i)")
}
