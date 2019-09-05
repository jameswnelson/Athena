
import Foundation

// MARK: - Min

public extension CGPoint {
    
    var minDimension: CGFloat {
        return Swift.min(x, y)
    }
    
    mutating func min<T: BinaryInteger>(by minimum: T) {
        self = Athena.min(self, minimum)
    }
    
    mutating func min(by minimum: CGPoint) {
        self = Athena.min(self, minimum)
    }
    
    func mined(by minimum: CGFloat) -> CGPoint {
        return Athena.min(self, minimum)
    }
    
    func minned<T: BinaryInteger>(by minimum: T) -> CGPoint {
        return Athena.min(self, minimum)
    }
    
    func minned<T: BinaryFloatingPoint>(by minimum: T) -> CGPoint {
        return Athena.min(self, minimum)
    }
    
    func minned(by minimum: CGPoint) -> CGPoint {
        return Athena.min(self, minimum)
    }
    
}

public func min<T: BinaryInteger>(_ lhs: CGPoint, _ rhs: T) -> CGPoint {
    return min(lhs, CGPoint(all: rhs))
}

public func min<T: BinaryFloatingPoint>(_ lhs: CGPoint, _ rhs: T) -> CGPoint {
    return min(lhs, CGPoint(all: rhs))
}

public func min(_ lhs: CGPoint, _ rhs: CGPoint) -> CGPoint {
    return CGPoint(x: min(lhs.x, rhs.x), y: min(lhs.y, rhs.y))
}

// MARK: - Max

public extension CGPoint {
    
    var maxDimension: CGFloat {
        return Swift.max(x, y)
    }
    
    mutating func max<T: BinaryInteger>(by maximum: T) {
        self = Athena.max(self, maximum)
    }
    
    mutating func max<T: BinaryFloatingPoint>(by maximum: T) {
        self = Athena.max(self, maximum)
    }
    
    mutating func max(by maximum: CGPoint) {
        self = Athena.max(self, maximum)
    }
    
    func maxed<T: BinaryInteger>(by maximum: T) -> CGPoint {
        return Athena.max(self, maximum)
    }
    
    func maxed<T: BinaryFloatingPoint>(by maximum: T) -> CGPoint {
        return Athena.max(self, maximum)
    }
    
    func maxed(by maximum: CGPoint) -> CGPoint {
        return Athena.max(self, maximum)
    }
    
}

public func max<T: BinaryInteger>(_ lhs: CGPoint, _ rhs: T) -> CGPoint {
    return max(lhs, CGPoint(all: rhs))
}

public func max<T: BinaryFloatingPoint>(_ lhs: CGPoint, _ rhs: T) -> CGPoint {
    return max(lhs, CGPoint(all: rhs))
}

public func max(_ lhs: CGPoint, _ rhs: CGPoint) -> CGPoint {
    return CGPoint(x: max(lhs.x, rhs.x), y: max(lhs.y, rhs.y))
}
