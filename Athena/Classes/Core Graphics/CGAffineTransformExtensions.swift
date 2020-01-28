
import Foundation

// MARK: Affine Transform

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
        return transforms.reduce(into: CGAffineTransform.identity) { $0 += $1 }
    }
    
    static func scale(_ scale: CGFloat) -> CGAffineTransform {
        return CGAffineTransform(scaleX: scale, y: scale)
    }
    
    static func scale(x: CGFloat, y: CGFloat) -> CGAffineTransform {
        return CGAffineTransform(scaleX: x, y: y)
    }
    
    static func rotate(_ angle: Double) -> CGAffineTransform {
        return CGAffineTransform( rotationAngle: CGFloat(angle))
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

// MARK: Core Graphics Context

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
