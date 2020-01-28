
import UIKit

public extension UIEdgeInsets {
    
    init(allInsetTo inset: CGFloat) {
        self = .init(inset, inset, inset, inset)
    }
    
    init(min: CGPoint, max: CGPoint) {
        self.init(min.y, min.x, max.y, max.x)
    }
    
    init?(dictionary: [String: String]) {
        
        guard
            let top = (dictionary[EdgeKeys.Top] as AnyObject).floatValue,
            let left = (dictionary[EdgeKeys.Left] as AnyObject).floatValue,
            let bottom = (dictionary[EdgeKeys.Bottom] as AnyObject).floatValue,
            let right = (dictionary[EdgeKeys.Right] as AnyObject).floatValue
        else {
            return nil
        }
        self.init(top, left, bottom, right)
        
    }

}

// MARK: - Floating Point

public extension UIEdgeInsets {
    
    init<T: BinaryFloatingPoint>(all value: T) {
        self.init(value, value, value, value)
    }
    
    init<T: BinaryFloatingPoint>(horizontal: T, vertical: T) {
        self.init(vertical, horizontal, vertical, horizontal)
    }
    
    init<T: BinaryFloatingPoint>(top: T? = nil, left: T? = nil, bottom: T? = nil, right: T? = nil) {
        self.init(top ?? .zero, left ?? .zero, bottom ?? .zero, right ?? .zero)
    }
    
    init<T: BinaryFloatingPoint>(_ top: T, _ left: T, _ bottom: T, _ right: T) {
        self.init(top: CGFloat(top), left: CGFloat(left), bottom: CGFloat(bottom), right: CGFloat(right))
    }
    
}

// MARK: - Integer

public extension UIEdgeInsets {
    
    init<T: BinaryInteger>(all value: T) {
        self.init(value, value, value, value)
    }
    
    init<T: BinaryInteger>(horizontal: T, vertical: T) {
        self.init(vertical, horizontal, vertical, horizontal)
    }
    
    init<T: BinaryInteger>(top: T? = nil, left: T? = nil, bottom: T? = nil, right: T? = nil) {
        self.init(top ?? .zero, left ?? .zero, bottom ?? .zero, right ?? .zero)
    }
    
    init<T: BinaryInteger>(_ top: T, _ left: T, _ bottom: T, _ right: T) {
        self.init(top: CGFloat(top), left: CGFloat(left), bottom: CGFloat(bottom), right: CGFloat(right))
    }
    
}
