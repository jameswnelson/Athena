
import Foundation
import CoreGraphics

public extension CGSize {
    
    func abs() -> CGSize {
        return CGSize.init(width: Darwin.abs(Int32(width)), height: Darwin.abs(Int32(height)))
    }
    
    // TODO: Remove as fabs is deprecated
    func fabs() -> CGSize {
        return CGSize.init(width: Darwin.fabs(width), height: Darwin.fabs(height))
    }
    
    func round() -> CGSize {
        return CGSize.init(width: Darwin.round(width), height: Darwin.round(height))
    }
    
    func ceil() -> CGSize {
        return CGSize.init(width: Darwin.ceil(width), height: Darwin.ceil(height))
    }
    
    func floor() -> CGSize {
        return CGSize.init(width: Darwin.floor(width), height: Darwin.floor(height))
    }
    
}

