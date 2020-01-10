
import Foundation
import CoreGraphics

public extension CGAffineTransform {
    
    init(scale: CGFloat) {
        self = .scale(scale)
    }
    
    init(rotation angle: CGFloat) {
        self = .rotate(angle)
    }
    
    init(rotation angle: Double) {
        self = .rotate(angle)
    }
    
    init(translate point: CGPoint) {
        self = .translate(point)
    }
    
    static func concatenating(_ transforms : [CGAffineTransform]) -> CGAffineTransform {
        var transform = CGAffineTransform.identity
        
        transforms.forEach { transform += $0 }
        
        return transform
    }
    
    static func scale(_ scale: CGFloat) -> CGAffineTransform {
        return CGAffineTransform(scaleX: scale, y: scale)
    }
    
    static func scale(x: CGFloat, y: CGFloat) -> CGAffineTransform {
        return CGAffineTransform(scaleX: x, y: y)
    }
    
    static func rotate(_ angle: Double) -> CGAffineTransform {
        return CGAffineTransform( rotationAngle: CGFloat( angle ) )
    }
    
    static func rotate(_ angle: CGFloat) -> CGAffineTransform {
        return CGAffineTransform(rotationAngle: angle)
    }
    
    static func translate(_ point: CGPoint) -> CGAffineTransform {
        return CGAffineTransform(translationX: point.x, y: point.y)
    }
    
}

public func + (left: CGAffineTransform, right: CGAffineTransform) -> CGAffineTransform {
    return left.concatenating(right)
}

public func += (left: inout CGAffineTransform, right: CGAffineTransform) {
    left = left + right
}
