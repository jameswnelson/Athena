
import UIKit

public extension CGSize {
    
    func abs() -> CGSize {
        CGSize.init(width: Darwin.abs(Int32(width)), height: Darwin.abs(Int32(height)))
    }
    
    func round() -> CGSize {
        CGSize.init(width: Darwin.round(width), height: Darwin.round(height))
    }
    
    func ceil() -> CGSize {
        CGSize.init(width: Darwin.ceil(width), height: Darwin.ceil(height))
    }
    
    func floor() -> CGSize {
        CGSize.init(width: Darwin.floor(width), height: Darwin.floor(height))
    }
    
}

