import XCTest
@testable import SwiftDynamicVsStatic

private let n = 10000000

class SwiftDynamicVsStaticTests: XCTestCase {
    
    func testDynamic() {
        let animal: Animal = arc4random() % 2 == 0 ? Dog() : Cat()

        var sum = 0
        measure {
            for _ in 1...n {
                sum = sum + animal.foo()
            }
        }
    }
    
    func testStatic() {
        let cat: Cat = Cat()
        
        var sum = 0
        measure {
            for _ in 1...n {
                sum = sum + cat.foo()
            }
        }
    }

    static var allTests : [(String, (SwiftDynamicVsStaticTests) -> () throws -> Void)] {
        return [
            ("testDynamic", testDynamic),
            ("testStatic", testStatic),
        ]
    }
}
