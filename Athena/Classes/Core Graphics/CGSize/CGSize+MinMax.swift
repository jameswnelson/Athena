
import Foundation

// MARK: - Min

public extension CGSize {
    
    var minDimension: CGFloat {
        Swift.min(width, height)
    }
    
    mutating func min<T: BinaryInteger>(by minimum: T) {
        self = Athena.min(self, minimum)
    }
    
    mutating func min<T: BinaryFloatingPoint>(by minimum: T) {
        self = Athena.min(self, minimum)
    }
    
    mutating func min(by minimum: CGSize) {
        self = Athena.min(self, minimum)
    }
    
    func minned<T: BinaryInteger>(by minimum: T) -> CGSize {
        Athena.min(self, minimum)
    }
    
    func minned<T: BinaryFloatingPoint>(by minimum: T) -> CGSize {
        Athena.min(self, minimum)
    }
    
    func minned(by minimum: CGSize) -> CGSize {
        Athena.min(self, minimum)
    }
    
}

public func min<T: BinaryInteger>(_ lhs: CGSize, _ rhs: T) -> CGSize {
    min(lhs, CGSize(all: rhs))
}

public func min<T: BinaryFloatingPoint>(_ lhs: CGSize, _ rhs: T) -> CGSize {
    min(lhs, CGSize(all: rhs))
}

public func min(_ lhs: CGSize, _ rhs: CGSize) -> CGSize {
    CGSize(width: min(lhs.width, rhs.width), height: min(lhs.height, rhs.height))
}

// MARK: - Max

public extension CGSize {
    
    var maxDimension: CGFloat {
        Swift.max(width, height)
    }
    
    mutating func max<T: BinaryInteger>(by maximum: T) {
        self = Athena.max(self, maximum)
    }
    
    mutating func max<T: BinaryFloatingPoint>(by maximum: T) {
        self = Athena.max(self, maximum)
    }
    
    mutating func max(by maximum: CGSize) {
        self = Athena.max(self, maximum)
    }
    
    func maxed<T: BinaryInteger>(by maximum: T) -> CGSize {
        Athena.max(self, maximum)
    }
    
    func maxed<T: BinaryFloatingPoint>(by maximum: T) -> CGSize {
        Athena.max(self, maximum)
    }
    
    func maxed(by maximum: CGSize) -> CGSize {
        Athena.max(self, maximum)
    }
    
}

public func max<T: BinaryInteger>(_ lhs: CGSize, _ rhs: T) -> CGSize {
    max(lhs, CGSize(all: rhs))
}

public func max<T: BinaryFloatingPoint>(_ lhs: CGSize, _ rhs: T) -> CGSize {
    max(lhs, CGSize(all: rhs))
}

public func max(_ lhs: CGSize, _ rhs: CGSize) -> CGSize {
    CGSize(width: max(lhs.width, rhs.width), height: max(lhs.height, rhs.height))
}
