
import Foundation
import CoreGraphics

// MARK: - Addition

public extension CGPoint {
    
    static func + <T: BinaryInteger>(left: CGPoint, right: T) -> CGPoint {
        left + CGPoint(all: right)
    }
    
    static func + <T: BinaryFloatingPoint>(left: CGPoint, right: T) -> CGPoint {
        left + CGPoint(all: right)
    }
    
    static func + (left: CGPoint, right: CGPoint) -> CGPoint {
        CGPoint(x: left.x + right.x, y: left.y + right.y)
    }
    
    static func +=  <T: BinaryInteger>(left: inout CGPoint, right: T) {
        left += CGPoint(all: right)
    }
    
    static func +=  <T: BinaryFloatingPoint>(left: inout CGPoint, right: T) {
        left += CGPoint(all: right)
    }
    
    static func += (left: inout CGPoint, right: CGPoint) {
        left = left + right
    }
    
}

// MARK: - Subtraction

public extension CGPoint {
    
    static func - <T: BinaryInteger>(left: CGPoint, right: T) -> CGPoint {
        return left - CGPoint(all: right)
    }
    
    static func - <T: BinaryFloatingPoint>(left: CGPoint, right: T) -> CGPoint {
        return left - CGPoint(all: right)
    }
    
    static func - (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x - right.x, y: left.y - right.y)
    }
    
    static func -= <T: BinaryInteger>(left: inout CGPoint, right: T) {
        left -= CGPoint(all: right)
    }
    
    static func -= <T: BinaryFloatingPoint>(left: inout CGPoint, right: T) {
        left -= CGPoint(all: right)
    }
    
    static func -= (left: inout CGPoint, right: CGPoint) {
        left = left - right
    }

}

// MARK: - Multiplication
    
public extension CGPoint {
    
    static func * <T: BinaryInteger>(left: CGPoint, right: T) -> CGPoint {
        return left * CGPoint(all: right)
    }
    
    static func * <T: BinaryFloatingPoint>(left: CGPoint, right: T) -> CGPoint {
        return left * CGPoint(all: right)
    }
    
    static func * (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x * right.x, y: left.y * right.y)
    }
    
    static func *= <T: BinaryInteger>(left: inout CGPoint, right: T) {
        left *= CGPoint(all: right)
    }
    
    static func *= <T: BinaryFloatingPoint>(left: inout CGPoint, right: T) {
        left *= CGPoint(all: right)
    }
    
    static func *= (left: inout CGPoint, right: CGPoint) {
        left = left * right
    }
    
}

// MARK: - Division

public extension CGPoint {
    
    static func / <T: BinaryInteger>(left: CGPoint, right: T) -> CGPoint {
        return left / CGPoint(all: right)
    }
    
    static func / <T: BinaryFloatingPoint>(left: CGPoint, right: T) -> CGPoint {
        return left / CGPoint(all: right)
    }
    
    static func / (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x / right.x, y: left.y / right.y)
    }
    
    static func /= <T: BinaryInteger>(left: inout CGPoint, right: T) {
        left /= CGPoint(all: right)
    }
    
    static func /= <T: BinaryFloatingPoint>(left: inout CGPoint, right: T) {
        left /= CGPoint(all: right)
    }
    
    static func /= (left: inout CGPoint, right: CGPoint) {
        left = left / right
    }
    
}

// MARK: - Modulus/Remainder

public extension CGPoint {
    
    static func % (left: CGPoint, right: CGFloat) -> CGPoint {
        return left % CGPoint(all: right)
    }
    
    static func % (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x.truncatingRemainder(dividingBy: right.x),
                       y: left.y.truncatingRemainder(dividingBy: right.y))
    }
    
    static func %= (left: inout CGPoint, right: CGFloat) {
        left %= CGPoint(all: right)
    }
    
    static func %= (left: inout CGPoint, right: CGPoint) {
        left = left % right
    }
    
}

// MARK: - Power

infix operator **=: MultiplicationPrecedence

public extension CGPoint {
    
    static func ** <T: BinaryInteger>(point: CGPoint, power: T) -> CGPoint {
        return point ** CGFloat(power)
    }
    
    static func ** <T: BinaryFloatingPoint>(point: CGPoint, power: T) -> CGPoint {
        return CGPoint(x: point.x ** CGFloat(power), y: point.y ** CGFloat(power))
    }
    
    static func **= <T: BinaryInteger>(point: inout CGPoint, power: T) {
        point **= CGFloat(power)
    }
    
    static func **= <T: BinaryFloatingPoint>(point: inout CGPoint, power: T) {
        point = point ** power
    }
    
}
