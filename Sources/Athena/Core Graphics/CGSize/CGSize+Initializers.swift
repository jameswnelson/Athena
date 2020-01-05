
import Foundation
import CoreGraphics

// MARK: - FloatingPoint

public extension CGSize {
    
    init<T: BinaryFloatingPoint>(all: T) {
        self.init(width: all, height: all)
    }

    init<T: BinaryFloatingPoint>(width: T = 0, height: T = 0) {
        self.init(width: CGFloat(width), height: CGFloat(height))
    }
    
}

// MARK: - Integer

public extension CGSize {
    
    init<T: BinaryInteger>(all: T) {
        self.init(width: all, height: all)
    }
    
    init<T: BinaryInteger>(width: T = 0, height: T = 0) {
        self.init(width: CGFloat(width), height: CGFloat(height))
    }
    
}

// MARK: - Dictionary

public extension CGSize {
    
    init?(dictionary: [String: String]) {
        
        guard
            let width = (dictionary[RectKeys.Width] as AnyObject).floatValue,
            let height = (dictionary[RectKeys.Height] as AnyObject).floatValue
        else {
            return nil
        }
        self.init(width: width, height: height)
        
    }
    
}
