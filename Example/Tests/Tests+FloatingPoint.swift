
import Foundation
import Athena
import XCTest

extension Tests {
    
    func testFloatingPoints() {
        
        XCTAssert(Double(5).near(4.99, variance: 0.01))
        
    }
    
    func testBooleans() {
        
        XCTAssert(Bool.init(0) == false)
        XCTAssert(Bool.init(0.1) == true)
        
        XCTAssert(Bool.init(-0) == false)
        XCTAssert(Bool.init(-0.1) == true)
        
        XCTAssert(Bool.init(Double.pi) == true)
        XCTAssert(Bool.init(Double.infinity) == true)
        
        XCTAssert(Bool.init(Int.min) == true)
        XCTAssert(Bool.init(Int.max) == true)
        
        XCTAssert(Bool.init(UInt.min) == false)
        XCTAssert(Bool.init(UInt.max) == true)
        
    }
    
}
