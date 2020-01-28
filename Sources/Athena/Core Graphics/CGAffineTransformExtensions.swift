
import Foundation

// MARK: - Affine Transform

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
    
    // Static Helpers
    
    static func concatenating(_ transforms : [CGAffineTransform]) -> CGAffineTransform {
        transforms.reduce(CGAffineTransform.identity, +)
    }
    
    static func scale(_ scale: CGFloat) -> CGAffineTransform {
        CGAffineTransform(scaleX: scale, y: scale)
    }
    
    static func scale(x: CGFloat, y: CGFloat) -> CGAffineTransform {
        CGAffineTransform(scaleX: x, y: y)
    }
    
    static func rotate(_ angle: Double) -> CGAffineTransform {
        CGAffineTransform( rotationAngle: CGFloat(angle))
    }
    
    static func rotate(_ angle: CGFloat) -> CGAffineTransform {
        CGAffineTransform(rotationAngle: angle)
    }
    
    static func translate(_ point: CGPoint) -> CGAffineTransform {
        CGAffineTransform(translationX: point.x, y: point.y)
    }
    
}

public func + (left: CGAffineTransform, right: CGAffineTransform) -> CGAffineTransform {
    left.concatenating(right)
}

public func += (left: inout CGAffineTransform, right: CGAffineTransform) {
    left = left + right
}

// MARK: - Core Graphics Context

public extension CGContext {
    
    func translate(_ point: CGPoint) {
        translateBy(x: point.x, y: point.y)
    }

    func scale(_ value: CGFloat) {
        scaleBy(x: value, y: value)
    }
    
    func fill(color: UIColor?, rect: CGRect) {
        color?.setFill()
        fill(rect)
    }
    
    func render(layer: CALayer) {
        layer.render(in: self)
    }
    
    func render(view: UIView) {
        render(layer: view.layer)
    }
    
}
