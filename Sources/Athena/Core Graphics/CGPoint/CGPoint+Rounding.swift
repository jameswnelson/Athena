
import UIKit

public extension CGPoint {
    
    func abs() -> CGPoint {
        .init(x: Darwin.abs(Int32(x)), y: Darwin.abs(Int32(y)))
    }
    
    func round() -> CGPoint {
        .init(x: Darwin.round(x), y: Darwin.round(y))
    }
    
    func ceil() -> CGPoint {
        .init(x: Darwin.ceil(x), y: Darwin.ceil(y))
    }
    
    func floor() -> CGPoint {
        .init(x: Darwin.floor(x), y: Darwin.floor(y))
    }
    
}

