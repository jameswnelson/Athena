
import Foundation
import CoreGraphics

public extension CGPoint {
    
    func abs() -> CGPoint {
        CGPoint.init(x: Darwin.abs(Int32(x)), y: Darwin.abs(Int32(y)))
    }
    
    // TODO: Remove as fabs is deprecated
    func fabs() -> CGPoint {
        CGPoint.init(x: Darwin.fabs(x), y: Darwin.fabs(y))
    }
    
    func round() -> CGPoint {
        CGPoint.init(x: Darwin.round(x), y: Darwin.round(y))
    }
    
    func ceil() -> CGPoint {
        CGPoint.init(x: Darwin.ceil(x), y: Darwin.ceil(y))
    }
    
    func floor() -> CGPoint {
        CGPoint.init(x: Darwin.floor(x), y: Darwin.floor(y))
    }
    
}

