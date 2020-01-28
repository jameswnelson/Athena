
import UIKit

public extension CGSize {
    
    mutating func outset(_ outsets: UIEdgeInsets) {
        self = outsetted(outsets)
    }
    
    func outsetted(_ outsets: UIEdgeInsets) -> CGSize {
        insetted(outsets * -1)
    }
    
}

// MARK: - Integer

public extension CGSize {

    mutating func outset<T: BinaryInteger>(_ value: T) {
        self = outsetted(value)
    }
    
    func outsetted<T: BinaryInteger>(_ value: T) -> CGSize {
        outsetted(Float(value))
    }
    
}

// MARK: - Floating Point

public extension CGSize {
    
    mutating func outset<T: BinaryFloatingPoint>(_ value: T) {
        self = outsetted(value)
    }
    
    func outsetted<T: BinaryFloatingPoint>(_ value: T) -> CGSize {
        insetted(-CGFloat(value))
    }
    
}
