
import UIKit

// MARK: - Inset

public extension CGRect {
    
    mutating func inset<T: BinaryInteger>(_ value: T) {
        self = insetted(value)
    }
    
    mutating func inset<T: BinaryFloatingPoint>(_ value: T) {
        self = insetted(value)
    }
    
    func insetted<T: BinaryInteger>(_ value: T) -> Self {
        insetBy(dx: CGFloat(value), dy: CGFloat(value))
    }
    
    func insetted<T: BinaryFloatingPoint>(_ value: T) -> Self {
        insetBy(dx: CGFloat(value), dy: CGFloat(value))
    }
    
    mutating func inset(_ point: CGPoint) {
        self = insetted(point)
    }
    
    func insetted(_ point: CGPoint) -> Self {
        insetBy(dx: point.x, dy: point.y)
    }
    
    mutating func inset(_ size: CGSize) {
        self = insetted(size)
    }
    
    func insetted(_ size: CGSize) -> Self {
        insetBy(dx: size.width, dy: size.height)
    }
    
    mutating func inset(_ insets: UIEdgeInsets) {
        self = insetted(insets)
    }
    
    func insetted(_ insets: UIEdgeInsets) -> Self {
        .init(
            x: x + insets.left,
            y: y + insets.top,
            width: width - (insets.left + insets.right),
            height: height - (insets.top + insets.bottom)
        )
    }
    
}

// MARK: - Outset

public extension CGRect {
    
    mutating func outset<T: BinaryInteger>(_ value: T) {
        inset(value * -1)
    }
    
    mutating func outset<T: BinaryFloatingPoint>(_ value: T) {
        inset(value * -1)
    }
    
    func outsetted<T: BinaryInteger>(_ value: T) -> Self {
        insetted(value * -1)
    }
    
    func outsetted<T: BinaryFloatingPoint>(_ value: T) -> Self {
        insetted(value * -1)
    }
    
    mutating func outset(_ point: CGPoint) {
        inset(point * -1)
    }
    
    func outsetted(_ point: CGPoint) -> Self {
        insetted(point * -1)
    }
    
    mutating func outset(_ size: CGSize) {
        inset(size * -1)
    }
    
    func outsetted(_ size: CGSize) -> Self {
        insetted(size * -1)
    }
    
    mutating func outset<T: BinaryInteger>(byFactor factor: T) {
        outset(size * factor)
    }
    
    mutating func outset<T: BinaryFloatingPoint>(byFactor factor: T) {
        outset(size * factor)
    }
    
    func outsetted(byFactor factor: CGFloat) -> Self {
        outsetted(size * factor)
    }

}
