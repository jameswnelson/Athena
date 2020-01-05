
import Foundation
import CoreGraphics
import UIKit

// MARK: - Bool

public extension Bool {
    
    init<T: Numeric>(_ value: T) {
        self = (value != 0)
    }
    
}

public extension BinaryFloatingPoint {
    
    /// <#Description#>
    ///
    /// - Parameter bool: <#bool description#>
    init(_ bool: Bool) {
        self.init(bool ? 1 : 0)
    }
    
    /// <#Description#>
    var isPositive: Bool {
        return self > 0
    }
    
}

infix operator **: MultiplicationPrecedence

public func ** (left: Float, right: Float) -> Float {
    return pow(left, right)
}

#if os(macOS)
public func ** (left: Float80, right: Float80) -> Float80 {
    return pow(left, right)
}
#endif

public func ** (left: CGFloat, right: CGFloat) -> CGFloat {
    return pow(left, right)
}

public func ** (left: Double, right: Double) -> Double {
    return pow(left, right)
}

