
import Foundation
import CoreGraphics

public extension CGSize {
    
    var reciprocal : CGSize {
        return CGSize(width: 1/width, height: 1/height)
    }
    
}

// MARK: - Addition

public extension CGSize {
    
    static func + <T: BinaryInteger>(left: CGSize, value: T) -> CGSize {
        return left + CGSize(all: value)
    }
    
    static func + <T: BinaryFloatingPoint>(left: CGSize, value: T) -> CGSize {
        return left + CGSize(all: value)
    }
    
    static func + (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width + right.width, height: left.height + right.height)
    }
    
    static func += <T: BinaryInteger>(left: inout CGSize, right: T) {
        left += CGSize(all: right)
    }
    
    static func += <T: BinaryFloatingPoint>(left: inout CGSize, right: T) {
        left += CGSize(all: right)
    }
    
    static func += (left: inout CGSize, right: CGSize) {
        left = left + right
    }
    
}

// MARK: - Subtraction

public extension CGSize {
    
    static func - <T: BinaryInteger>(left: CGSize, right: T) -> CGSize {
        return left - CGSize(all: right)
    }
    
    static func - <T: BinaryFloatingPoint>(left: CGSize, right: T) -> CGSize {
        return left - CGSize(all: right)
    }
    
    static func - (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width - right.width, height: left.height - right.height)
    }
    
    static func -= <T: BinaryInteger>(left: inout CGSize, right: T) {
        left -= CGSize(all: right)
    }
    
    static func -= <T: BinaryFloatingPoint>(left: inout CGSize, right: T) {
        left -= CGSize(all: right)
    }
    
    static func -= (left: inout CGSize, right: CGSize) {
        left = left - right
    }
    
}

// MARK: - Multiplication

public extension CGSize {
    
    static func * <T: BinaryInteger>(left: CGSize, right: T) -> CGSize {
        return left * CGSize(all: right)
    }
    
    static func * <T: BinaryFloatingPoint>(left: CGSize, right: T) -> CGSize {
        return left * CGSize(all: right)
    }
    
    static func * (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width * right.width, height: left.height * right.height)
    }
    
    static func *= <T: BinaryInteger>(left: inout CGSize, right: T) {
        left *= CGSize(all: right)
    }
    
    static func *= <T: BinaryFloatingPoint>(left: inout CGSize, right: T) {
        left *= CGSize(all: right)
    }
    
    static func *= (left: inout CGSize, right: CGSize) {
        left = left * right
    }
    
}

// MARK: - Division

public extension CGSize {
    
    static func / <T: BinaryInteger>(size: CGSize, value: T) -> CGSize {
        return size / CGSize(all: value)
    }
    
    static func / <T: BinaryFloatingPoint>(size: CGSize, value: T) -> CGSize {
        return size / CGSize(all: value)
    }
    
    static func / (lhs: CGSize, rhs: CGSize) -> CGSize {
        return CGSize(width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
    
    static func /= <T: BinaryInteger>(size: inout CGSize, value: T) {
        size /= CGSize(all: value)
    }
    
    static func /= <T: BinaryFloatingPoint>(size: inout CGSize, value: T) {
        size /= CGSize(all: value)
    }
    
    static func /= (lhs: inout CGSize, rhs: CGSize) {
        lhs = lhs / rhs
    }
    
}

// MARK: - Modulus/Remainder

public extension CGSize {
    
    static func % <T: BinaryInteger>(left: CGSize, right: T) -> CGSize {
        return left % CGSize(all: right)
    }
    
    static func % <T: BinaryFloatingPoint>(left: CGSize, right: T) -> CGSize {
        return left % CGSize(all: right)
    }
    
    static func % (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width.truncatingRemainder(dividingBy: right.width),
                      height: left.height.truncatingRemainder(dividingBy: right.height))
    }
    
    static func %= <T: BinaryInteger>(left: inout CGSize, right: T) {
        left %= CGSize(all: right)
    }
    
    static func %= <T: BinaryFloatingPoint>(left: inout CGSize, right: T) {
        left %= CGSize(all: right)
    }
    
    static func %= (left: inout CGSize, right: CGSize) {
        left = left % right
    }
    
}

// MARK: - Power

infix operator **=: MultiplicationPrecedence

public extension CGSize {
    
    static func ** <T: BinaryInteger>(size: CGSize, power: T) -> CGSize {
        return size ** CGFloat(power)
    }
    
    static func ** <T: BinaryFloatingPoint>(size: CGSize, power: T) -> CGSize {
        return CGSize(width: size.width ** CGFloat(power), height: size.height ** CGFloat(power))
    }
    
    static func **= <T: BinaryInteger>(size: inout CGSize, power: T) {
        size **= CGFloat(power)
    }
    
    static func **= <T: BinaryFloatingPoint>(size: inout CGSize, power: T) {
        size = size ** power
    }
    
}
