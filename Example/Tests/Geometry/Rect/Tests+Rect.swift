
import Foundation
import XCTest
import Athena

extension Tests {
    
    func testRects() {
        
        testEquality()
        testMutation()
        
        let r1 = Rect(origin: Point(x: 0, y: 0), size: Size(width: 0, height: 0))
        let r2 = Rect(x: 0, y: 0, width: 0, height: 0)
        
        XCTAssert(testEquality(a: r1, b: r2))
    }
    
    private func testEquality() {
        
        let int = 0
        let double = 0.0
        
        let intRect = Rect.init(x: int, y: int, width: int, height: int)
        let doubleRect = Rect.init(x: double, y: double, width: double, height: double)
        
        XCTAssert(testEquality(a: intRect, b: intRect))
        XCTAssert(testEquality(a: intRect, b: doubleRect))
        XCTAssert(testEquality(a: doubleRect, b: intRect))
        XCTAssert(testEquality(a: doubleRect, b: doubleRect))

    }
    
    private func testMutation() {
        
        let int = 0
        let double = 0.0
        
        var intRect = Rect.init(x: int, y: int, width: int, height: int)
        var doubleRect = Rect.init(x: double, y: double, width: double, height: double)
        
        XCTAssert(testEquality(a: intRect, b: doubleRect))
        XCTAssert(testEquality(a: doubleRect, b: intRect))
        
        intRect.origin.x = 1
        
        XCTAssert(testEquality(a: intRect, b: doubleRect) == false)
        XCTAssert(testEquality(a: doubleRect, b: intRect) == false)
        
        doubleRect.origin.x = 1
        
        XCTAssert(testEquality(a: intRect, b: doubleRect))
        XCTAssert(testEquality(a: doubleRect, b: intRect))
        
    }
    
}

private extension Tests {
    
    func testEquality<T:BinaryInteger, S: BinaryInteger>(a: Rect<T>, b: Rect<S>) -> Bool {
        
        return a == b
            && b == a
            && (a != b) == false
            && (b != a) == false
        
    }
    
    func testEquality<T:BinaryFloatingPoint, S: BinaryFloatingPoint>(a: Rect<T>, b: Rect<S>) -> Bool {
        
        return a == b
            && b == a
            && (a != b) == false
            && (b != a) == false
        
    }
    
    func testEquality<T:BinaryFloatingPoint, S: BinaryInteger>(a: Rect<T>, b: Rect<S>) -> Bool {
        return testEquality(a: b, b: a)
    }
    
    func testEquality<T:BinaryInteger, S: BinaryFloatingPoint>(a: Rect<T>, b: Rect<S>) -> Bool {
        
        return a == b
            && b == a
            && (a != b) == false
            && (b != a) == false
        
    }
    
}
