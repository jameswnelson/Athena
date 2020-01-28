
import Foundation
import CoreGraphics
import UIKit

// MARK: - Floating Point

public extension UIEdgeInsets {
    
    static func * <T: BinaryFloatingPoint>(insets: UIEdgeInsets, value: T) -> UIEdgeInsets {
        
        let value = CGFloat(value)
        return UIEdgeInsets(top: insets.top * value, left: insets.left * value, bottom: insets.bottom * value, right: insets.right * value)
    }
    
    static func *= <T: BinaryFloatingPoint>(insets: inout UIEdgeInsets, value: T) {
        insets = insets * value
    }
    
}

// MARK: - Integer

public extension UIEdgeInsets {
    
    static func * <T: BinaryInteger>(insets: UIEdgeInsets, value: T) -> UIEdgeInsets {
        insets * Double(value)
    }
    
    static func *= <T: BinaryInteger>(insets: inout UIEdgeInsets, value: T) {
        insets *= Double(value)
    }
    
}
