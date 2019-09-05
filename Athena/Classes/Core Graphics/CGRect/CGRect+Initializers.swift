
import Foundation

// MARK: - FloatingPoint

public extension CGRect {
    
    init<T: BinaryFloatingPoint>(x: T = 0, y: T = 0, width: T = 0, height: T = 0) {
        self.init(origin: CGPoint.init(x: x, y: y), size: CGSize.init(width: width, height: height))
    }
    
}

// MARK: - Integer

public extension CGRect {
    
    init<T: BinaryInteger>(x: T = 0, y: T = 0, width: T = 0, height: T = 0) {
        self.init(origin: CGPoint.init(x: x, y: y), size: CGSize.init(width: width, height: height))
    }
    
}

// MARK: - Dictionary

public extension CGRect {
    
    init?(dictionary: [String: String]) {
        
        guard
            let origin = CGPoint.init(dictionary: dictionary),
            let size = CGSize.init(dictionary: dictionary)
        else {
            return nil
        }
        self.init(origin: origin, size: size)
        
    }
    
}
