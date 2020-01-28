
import Foundation

// MARK: - Helpers

public extension CGPoint {
    
    func distance(between p: CGPoint) -> CGFloat {
        sqrt(pow(x - p.x, 2) + pow(y - p.y, 2))
    }
    
    func pointDistance(between point: CGPoint) -> CGPoint {
        (self - point).abs()
    }

    var hypotenuse : CGFloat {
        hypot(x, y)
    }
    
    func hypotenuseBetween(point: CGPoint) -> CGFloat {
        (point - self).hypotenuse
    }
    
    var reciprocal : CGPoint {
        CGPoint(x: 1/x, y: 1/y)
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
        
        var point = self.applying(.translate(-pivot))
        point = point.applying(.rotate(angle))
        point = point.applying(.translate(pivot))
        
        return point
    }
    
    mutating func rotate(_ pivot: CGPoint, angle: CGFloat) {
        self = rotated(pivot, angle: angle)
    }
    
}

// MARK: - Negation

public extension CGPoint {
    
    static prefix func -(lhs: CGPoint) -> CGPoint {
        CGPoint(x: -lhs.x, y: -lhs.y)
    }
    
    mutating func flipYAxis() {
        y = -y
    }
    
    var flippedYAxis : CGPoint {
        CGPoint(x: x, y: -y)
    }
    
}
