
import Foundation

public extension CGRect {
    
    func scaled(scale s: CGFloat) -> CGRect {
        return scaled(aroundPoint: center, sx: s, sy: s)
    }
    
    mutating func scale(scale s: CGFloat) {
        scale(aroundPoint: center, sx: s, sy: s)
    }
    
    func scaled(scale s: CGPoint) -> CGRect {
        return scaled(aroundPoint: center, sx: s.x, sy: s.y)
    }
    
    mutating func scale(scale s: CGPoint) {
        scale(aroundPoint: center, sx: s.x, sy: s.y)
    }
    
    func scaled(aroundPoint point: CGPoint, scale s: CGPoint) -> CGRect {
        return scaled(aroundPoint: point, sx: s.x, sy: s.y)
    }
    
    mutating func scale(aroundPoint point: CGPoint, scale s: CGPoint) {
        scale(aroundPoint: point, sx: s.x, sy: s.y)
    }
    
    func scaled(aroundPoint point: CGPoint, sx: CGFloat, sy: CGFloat) -> CGRect {
        
        var translationTransform = CGAffineTransform(translationX: -point.x, y: -point.y)
        var rect = self.applying(translationTransform)
        
        let scaleTransform = CGAffineTransform(scaleX: sx, y: sy)
        rect = rect.applying(scaleTransform)
        
        translationTransform = CGAffineTransform(translationX: point.x, y: point.y)
        rect = rect.applying(translationTransform)
        
        return rect
    }
    
    mutating func scale(aroundPoint point: CGPoint, sx: CGFloat, sy: CGFloat) {
        self = scaled(aroundPoint: point, sx: sx, sy: sy)
    }
    
}

// MARK: - Fitting

public extension CGRect {
    
    /// Scales this CGRect while maintaining the aspect ratio of this CGRect's size within a bounding CGRect.
    mutating func fit(inside rect: CGRect) {
        self = fitted(inside: rect)
    }
    
    /// Returns a scaled CGRect that maintains the aspect ratio of this CGRect's size within a bounding CGRect.
    func fitted(inside rect: CGRect) -> CGRect {
        return CGRect(aspectRatio: size, inside: rect)
    }
    
    mutating func fit(to aspectRatio: CGSize) {
        self = fitted(to: aspectRatio)
    }
    
    func fitted(to aspectRatio: CGSize) -> CGRect {
        return CGRect(center: center, size: size.fitting(aspectRatio: aspectRatio))
    }
    
}

// MARK: - Filling

public extension CGRect {
    
    mutating func fill(aspectRatio: CGSize) {
        self = filling(aspectRatio: aspectRatio)
    }
    
    func filling(aspectRatio: CGSize) -> CGRect {
        return CGRect(center: center, size: size.filling(aspectRatio: aspectRatio))
    }
    
}
