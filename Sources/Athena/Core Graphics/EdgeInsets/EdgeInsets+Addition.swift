
import UIKit

// MARK: - Floating Point

public extension UIEdgeInsets {
    
    static func + <T: BinaryFloatingPoint>(insets: Self, value: T) -> Self {
        
        let value = CGFloat(value)
        return .init(top: insets.top + value, left: insets.left + value, bottom: insets.bottom + value, right: insets.right + value)
    }
    
    static func += <T: BinaryFloatingPoint>(insets: inout Self, value: T) {
        insets = insets + value
    }
    
}

// MARK: - Integer

public extension UIEdgeInsets {
    
    static func + <T: BinaryInteger>(insets: Self, value: T) -> Self {
        insets + Double(value)
    }
    
    static func += <T: BinaryInteger>(insets: inout Self, value: T) {
        insets += Double(value)
    }

}
