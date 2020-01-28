
import UIKit

// MARK: - Concatenation

public extension CGAffineTransform {
    
    static func concatenating(_ transforms : [Self]) -> Self {
        transforms.reduce(Self.identity, +)
    }
    
    static func + (left: Self, right: Self) -> Self {
        left.concatenating(right)
    }

    static func += (left: inout Self, right: Self) {
        left = left + right
    }
    
}

// MARK: - Translation

public extension CGAffineTransform {
    
    init(translate point: CGPoint) {
        self = .translate(point)
    }
    
    static func translate(_ point: CGPoint) -> Self {
        .init(translationX: point.x, y: point.y)
    }

}

// MARK: - BinaryInteger

extension CGAffineTransform {
    
    init<T: BinaryInteger>(scale: T) {
        self = .scale(CGFloat(scale))
    }
    
    init<T: BinaryInteger>(rotation angle: T) {
        self = .rotate(CGFloat(angle))
    }
    
    static func scale<T: BinaryInteger>(_ scale: T) -> Self {
        .scale(x: scale, y: scale)
    }

    static func scale<T: BinaryInteger>(x: T, y: T) -> Self {
        .init(scaleX: CGFloat(x), y: CGFloat(y))
    }

    static func rotate<T: BinaryInteger>(_ angle: T) -> Self {
        .init(rotationAngle: CGFloat(angle))
    }
    
}

// MARK: - BinaryFloatingPoint

extension CGAffineTransform {
    
    init<T: BinaryFloatingPoint>(scale: T) {
        self = .scale(CGFloat(scale))
    }
    
    init<T: BinaryFloatingPoint>(rotation angle: T) {
        self = .rotate(angle)
    }
    
    static func scale<T: BinaryFloatingPoint>(_ scale: T) -> Self {
        .scale(x: scale, y: scale)
    }

    static func scale<T: BinaryFloatingPoint>(x: T, y: T) -> Self {
        .init(scaleX: CGFloat(x), y: CGFloat(y))
    }

    static func rotate<T: BinaryFloatingPoint>(_ angle: T) -> Self {
        .init(rotationAngle: CGFloat(angle))
    }
    
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
