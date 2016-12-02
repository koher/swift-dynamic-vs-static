public protocol Animal {
    func foo() -> Int
}

public struct Dog: Animal {
    public func foo() -> Int {
        return 2
    }
}

public struct Cat: Animal {
    public func foo() -> Int {
        return 3
    }
}
