
import Foundation
import CoreGraphics

// MARK: - Helpers

public extension CGPoint {
    
    func distance(between p: CGPoint) -> CGFloat {
        return sqrt(pow(x - p.x, 2) + pow(y - p.y, 2))
    }
    
    func pointDistance(between point: CGPoint) -> CGPoint {
        return (self - point).abs()
    }

    var hypotenuse : CGFloat {
        return hypot(x, y)
    }
    
    func hypotenuseBetween(point: CGPoint) -> CGFloat {
        return (point - self).hypotenuse
    }
    
    var reciprocal : CGPoint {
        return CGPoint(x: 1/x, y: 1/y)
    }
    
}

// MARK: - Snapping

public extension CGPoint {
    
    func snappedTo(_ value: CGFloat) -> CGPoint {
        
        var remainder = self % value
        if remainder.x < value / 2 {
            remainder.x *= -1
        }
        if remainder.y < value / 2 {
            remainder.y *= -1
        }
        return self + remainder
    }
    
    mutating func snapTo(_ value: CGFloat) {
        self = snappedTo(value)
    }
    
}

// MARK: - Rotation

public extension CGPoint {
    
    func rotated(_ pivot: CGPoint, angle: CGFloat) -> CGPoint {

        var point = self.applying(CGAffineTransform.identity.translatedBy(x: -pivot.x, y: -pivot.y))
        point = point.applying(CGAffineTransform.identity.rotated(by: angle))
        point = point.applying(CGAffineTransform.identity.translatedBy(x: pivot.x, y: pivot.y))
        
        return point
    }
    
    mutating func rotate(_ pivot: CGPoint, angle: CGFloat) {
        self = rotated(pivot, angle: angle)
    }
    
}

// MARK:

public extension CGPoint {
    
    static prefix func -(lhs: CGPoint) -> CGPoint {
        return CGPoint(x: -lhs.x, y: -lhs.y)
    }
    
    mutating func flipYAxis() {
        y = -y
    }
    
    var flippedYAxis : CGPoint {
        return CGPoint(x: x, y: -y)
    }
    
}
