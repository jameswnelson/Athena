
import Foundation
import CoreGraphics

// MARK: - FloatingPoint

public extension CGPoint {
    
    init<T: BinaryFloatingPoint>(all: T) {
        self.init(x: all, y: all)
    }
    
    init<T: BinaryFloatingPoint>(x: T = 0, y: T = 0) {
        self.init(x: CGFloat(x), y: CGFloat(y))
    }
    
    init<T: BinaryFloatingPoint>(all: T?) {
        self.init(x: all, y: all)
    }
    
    init<T: BinaryFloatingPoint>(x: T?, y: T?) {
        self.init(x: CGFloat(x ?? 0), y: CGFloat(y ?? 0))
    }
    
}

// MARK: - Integer

public extension CGPoint {
    
    init<T: BinaryInteger>(all: T) {
        self.init(x: all, y: all)
    }
    
    init<T: BinaryInteger>(x: T = 0, y: T = 0) {
        self.init(x: CGFloat(x), y: CGFloat(y))
    }
    
    init<T: BinaryInteger>(all: T?) {
        self.init(x: all, y: all)
    }
    
    init<T: BinaryInteger>(x: T?, y: T?) {
        self.init(x: CGFloat(x ?? 0), y: CGFloat(y ?? 0))
    }
    
}

// MARK: - Dictionary

public extension CGPoint {
    
    init?(dictionary: [String: String]) {
        
        guard
            let x = (dictionary[RectKeys.X] as AnyObject).floatValue,
            let y = (dictionary[RectKeys.Y] as AnyObject).floatValue
        else {
            return nil
        }
        self.init(x: x, y: y)
        
    }
    
}
