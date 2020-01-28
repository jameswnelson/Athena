
import Foundation

// MARK: - FloatingPoint

public extension CGSize {
    
    init<T: BinaryFloatingPoint>(all: T) {
        self.init(width: all, height: all)
    }

    init<T: BinaryFloatingPoint>(width: T = 0, height: T = 0) {
        self.init(width: CGFloat(width), height: CGFloat(height))
    }
    
    init<T: BinaryFloatingPoint>(all: T?) {
        self.init(width: all, height: all)
    }

    init<T: BinaryFloatingPoint>(width: T?, height: T?) {
        self.init(width: CGFloat(width ?? 0), height: CGFloat(height ?? 0))
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
    
    init<T: BinaryInteger>(all: T?) {
        self.init(width: all, height: all)
    }

    init<T: BinaryInteger>(width: T?, height: T?) {
        self.init(width: CGFloat(width ?? 0), height: CGFloat(height ?? 0))
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
