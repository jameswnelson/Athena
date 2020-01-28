
import Foundation
import CoreGraphics

public extension CGRect {
    
    var x : CGFloat {
        get { origin.x }
        set { origin.x = newValue }
    }
    
    var y : CGFloat {
        get { origin.y }
        set { origin.y = newValue }
    }
    
    var center : CGPoint {
        CGPoint(x: midX, y: midY)
    }
    
    var min: CGPoint {
        CGPoint(x: minX, y: minY)
    }
    
    var max: CGPoint {
        CGPoint(x: maxX, y: maxY)
    }
    
}

// MARK: Overriding - Floating Point

public extension CGRect {
    
    func replacing<T: BinaryFloatingPoint>(x: T) -> CGRect {
        CGRect(origin: CGPoint(x: CGFloat(x), y: y), size: size)
    }
    
    func replacing<T: BinaryFloatingPoint>(y: T) -> CGRect {
        CGRect(origin: CGPoint(x: x, y: CGFloat(y)), size: size)
    }
    
    func replacing<T: BinaryFloatingPoint>(width: T) -> CGRect {
        CGRect(origin: origin, size: CGSize(width: CGFloat(width), height: height))
    }
    
    func replacing<T: BinaryFloatingPoint>(height: T) -> CGRect {
        CGRect(origin: origin, size: CGSize(width: width, height: CGFloat(height)))
    }
    
}

// MARK: Overriding - Integer

public extension CGRect {
    
    func replacing<T: BinaryInteger>(x: T) -> CGRect {
        CGRect(origin: CGPoint(x: CGFloat(x), y: y), size: size)
    }
    
    func replacing<T: BinaryInteger>(y: T) -> CGRect {
        CGRect(origin: CGPoint(x: x, y: CGFloat(y)), size: size)
    }
    
    func replacing<T: BinaryInteger>(width: T) -> CGRect {
        CGRect(origin: origin, size: CGSize(width: CGFloat(width), height: height))
    }
    
    func replacing<T: BinaryInteger>(height: T) -> CGRect {
        CGRect(origin: origin, size: CGSize(width: width, height: CGFloat(height)))
    }
    
}
