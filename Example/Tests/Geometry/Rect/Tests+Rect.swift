
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
