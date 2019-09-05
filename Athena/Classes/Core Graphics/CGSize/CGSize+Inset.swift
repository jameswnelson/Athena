
import Foundation

public extension CGSize {
    
    mutating func inset(_ insets: UIEdgeInsets) {
        self = insetted(insets)
    }
    
    func insetted(_ insets: UIEdgeInsets) -> CGSize {
        return CGSize(width: width - (insets.left + insets.right),
                      height: height - (insets.top + insets.bottom))
    }
    
}

// MARK: - Integer

public extension CGSize {
    
    mutating func inset<T: BinaryInteger>(_ value: T) {
        self = insetted(value)
    }
    
    func insetted<T: BinaryInteger>(_ value: T) -> CGSize {
        return insetted(Float(value))
    }
    
}

// MARK: - Floating Point

public extension CGSize {
    
    mutating func inset<T: BinaryFloatingPoint>(_ value: T) {
        self = insetted(value)
    }
    
    func insetted<T: BinaryFloatingPoint>(_ value: T) -> CGSize {
        return self - CGFloat(value*2)
    }
    
}
