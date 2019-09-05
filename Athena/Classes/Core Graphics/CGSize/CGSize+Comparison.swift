
import Foundation

public extension CGSize {
    
    var area : CGFloat {
        return width * height
    }
    
    var hypotenuse: CGFloat {
        return sqrt(width**2 + height**2)
    }
    
    var length: CGFloat {
        return width + height
    }
    
    func contains(_ size: CGSize) -> Bool {
        let diff = self - size
        return diff.width >= 0 && diff.height >= 0
    }
    
}

public extension CGSize {
    
    func isLarger(than size: CGSize) -> Bool {
        return area > size.area
    }
    
}

public extension Array where Element == CGSize {
    
    var largest: CGSize? {
        
        guard count > 0 else {
            return nil
        }
        return reduce(CGSize.zero) { $0.isLarger(than: $1) ? $0 : $1 }
    }
    
    func largestContaining(_ size: CGSize) -> CGSize? {
        
        guard count > 0 else {
            return nil
        }
        return filter { size.contains($0) }.largest
    }
    
}
