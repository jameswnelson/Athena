
import Foundation
import XCTest
import Athena

extension Tests {

    func testGenericInit() {
        
        XCTAssert(CGRect.init() == .zero)
        
        XCTAssert(CGRect.init(x: 1) == CGRect.init(x: 1, y: 0, width: 0, height: 0))
        XCTAssert(CGRect.init(x: 1, y: 1) == CGRect.init(x: 1, y: 1, width: 0, height: 0))
        XCTAssert(CGRect.init(x: 1.0) == CGRect.init(x: 1, y: 0, width: 0, height: 0))
        XCTAssert(CGRect.init(x: 1.0, y: 1.0) == CGRect.init(x: 1, y: 1, width: 0, height: 0))
        
        XCTAssert(CGRect.init(width: 1) == CGRect.init(x: 0, y: 0, width: 1, height: 0))
        XCTAssert(CGRect.init(height: 1) == CGRect.init(x: 0, y: 0, width: 0, height: 1))
        XCTAssert(CGRect.init(width: 1.0) == CGRect.init(x: 0, y: 0, width: 1, height: 0))
        XCTAssert(CGRect.init(height: 1.0) == CGRect.init(x: 0, y: 0, width: 0, height: 1))
        
        XCTAssert(CGRect.init(x: 5, height: 12) == CGRect.init(x: 5, y: 0, width: 0, height: 12))
        XCTAssert(CGRect.init(y: 5, width: 12) == CGRect.init(x: 0, y: 5, width: 12, height: 0))
        XCTAssert(CGRect.init(x: 5.0, height: 12.0) == CGRect.init(x: 5, y: 0, width: 0, height: 12))
        XCTAssert(CGRect.init(y: 5.0, width: 12.0) == CGRect.init(x: 0, y: 5, width: 12, height: 0))
        
    }
    
    func testDictInit() {
    
        XCTAssert(CGRect.init(dictionary: [RectKeys.X: "7", RectKeys.Y: "5", RectKeys.Width: "12", RectKeys.Height: "0"]) == CGRect.init(x: 7, y: 5.0, width: 12.0, height: 0))
        XCTAssert(CGRect.init(dictionary: ["x": "7", "y": "5", "width": "12", "height": "0"]) == CGRect.init(x: 7, y: 5.0, width: 12.0, height: 0))
        
    }
    
    func testCenterInit() {
        
        let rect = CGRect.init(x: 50, y: 120, width: 500, height: 500)
        XCTAssert(CGRect.init(center: rect.center, size: rect.size) == rect)
        
    }
    
    func testContainingInit() {
        
        let points = [
            CGPoint.init(x: 50, y: 75),
            CGPoint.init(x: 5, y: 7),
            CGPoint.init(x: -50, y: -75),
            CGPoint.init(x: 5, y: -36),
        ]
        
        let large = CGRect.init(containing: points)
        
        points.forEach {
            XCTAssert(large.contains($0) || large.max == $0)
        }
        
    }
    
    func testMath()  {
        
        
        
    }
    
}

extension Tests {
    
//    func testRects() {
//
//        testEquality()
//        testMutation()
//
//        let r1 = Rect(origin: Point(x: 0, y: 0), size: Size(width: 0, height: 0))
//        let r2 = Rect(x: 0, y: 0, width: 0, height: 0)
//
//        XCTAssert(testEquality(a: r1, b: r2))
//    }
//
//    private func testEquality() {
//
//        let int = 0
//        let double = 0.0
//
//        let intRect = Rect.init(x: int, y: int, width: int, height: int)
//        let doubleRect = Rect.init(x: double, y: double, width: double, height: double)
//
//        XCTAssert(testEquality(a: intRect, b: intRect))
//        XCTAssert(testEquality(a: intRect, b: doubleRect))
//        XCTAssert(testEquality(a: doubleRect, b: intRect))
//        XCTAssert(testEquality(a: doubleRect, b: doubleRect))
//
//    }
//
//    private func testMutation() {
//
//        let int = 0
//        let double = 0.0
//
//        var intRect = Rect.init(x: int, y: int, width: int, height: int)
//        var doubleRect = Rect.init(x: double, y: double, width: double, height: double)
//
//        XCTAssert(testEquality(a: intRect, b: doubleRect))
//        XCTAssert(testEquality(a: doubleRect, b: intRect))
//
//        intRect.origin.x = 1
//
//        XCTAssert(testEquality(a: intRect, b: doubleRect) == false)
//        XCTAssert(testEquality(a: doubleRect, b: intRect) == false)
//
//        doubleRect.origin.x = 1
//
//        XCTAssert(testEquality(a: intRect, b: doubleRect))
//        XCTAssert(testEquality(a: doubleRect, b: intRect))
//
//    }
    
}

private extension Tests {
    
//    func testEquality<T:BinaryInteger, S: BinaryInteger>(a: Rect<T>, b: Rect<S>) -> Bool {
//
//        return a == b
//            && b == a
//            && (a != b) == false
//            && (b != a) == false
//
//    }
//
//    func testEquality<T:BinaryFloatingPoint, S: BinaryFloatingPoint>(a: Rect<T>, b: Rect<S>) -> Bool {
//
//        return a == b
//            && b == a
//            && (a != b) == false
//            && (b != a) == false
//
//    }
//
//    func testEquality<T:BinaryFloatingPoint, S: BinaryInteger>(a: Rect<T>, b: Rect<S>) -> Bool {
//        return testEquality(a: b, b: a)
//    }
//
//    func testEquality<T:BinaryInteger, S: BinaryFloatingPoint>(a: Rect<T>, b: Rect<S>) -> Bool {
//
//        return a == b
//            && b == a
//            && (a != b) == false
//            && (b != a) == false
//
//    }
    
}
