
import Foundation

// MARK: - Addition

public extension CGRect {
    
    static func + <T: BinaryInteger>(rect: CGRect, value: T) -> CGRect {
        rect + CGSize(all: value)
    }
    
    static func + <T: BinaryFloatingPoint>(rect: CGRect, value: T) -> CGRect {
        rect + CGSize(all: value)
    }
    
    static func + (left: CGRect, right: CGFloat) -> CGRect {
        left + CGSize(all: right)
    }
    
    static func + (left: CGRect, right: CGSize) -> CGRect {
        CGRect(center: left.center, size: left.size + right)
    }
    
    static func += <T: BinaryInteger>(rect: inout CGRect, value: T) {
        rect += CGSize(all: value)
    }
    
    static func += <T: BinaryFloatingPoint>(rect: inout CGRect, value: T) {
        rect += CGSize(all: value)
    }
    
    static func += (left: inout CGRect, right: CGSize) {
        left = left + right
    }

}

// MARK: - Subtraction

public extension CGRect {
    
    static func - <T: BinaryInteger>(rect: CGRect, value: T) -> CGRect {
        rect - CGSize(all: value)
    }
    
    static func - <T: BinaryFloatingPoint>(rect: CGRect, value: T) -> CGRect {
        rect - CGSize(all: value)
    }
    
    static func - (left: CGRect, right: CGSize) -> CGRect {
        CGRect(center: left.center, size: left.size - right)
    }
    
    static func -= <T: BinaryInteger>(rect: inout CGRect, value: T) {
        rect -= CGSize(all: value)
    }
    
    static func -= <T: BinaryFloatingPoint>(rect: inout CGRect, value: T) {
        rect -= CGSize(all: value)
    }
    
    static func -= (left: inout CGRect, right: CGSize) {
        left = left - right
    }

}

// MARK: - Multiplication

public extension CGRect {
    
    static func * <T: BinaryInteger>(rect: CGRect, value: T) -> CGRect {
        rect * CGSize(all: value)
    }
    
    static func * <T: BinaryFloatingPoint>(rect: CGRect, value: T) -> CGRect {
        rect * CGSize(all: value)
    }
    
    static func * (left: CGRect, right: CGSize) -> CGRect {
        CGRect(center: left.center, size: left.size * right)
    }
    
    static func *= <T: BinaryInteger>(rect: inout CGRect, value: T) {
        rect *= CGSize(all: value)
    }
    
    static func *= <T: BinaryFloatingPoint>(rect: inout CGRect, value: T) {
        rect *= CGSize(all: value)
    }
    
    static func *= (left: inout CGRect, right: CGSize) {
        left = left * right
    }

}

// MARK: - Division

public extension CGRect {
    
    static func / <T: BinaryInteger>(rect: CGRect, value: T) -> CGRect {
        rect / CGSize(all: value)
    }
    
    static func / <T: BinaryFloatingPoint>(rect: CGRect, value: T) -> CGRect {
        rect / CGSize(all: value)
    }
    
    static func / (left: CGRect, right: CGSize) -> CGRect {
        CGRect(center: left.center, size: left.size / right)
    }
    
    static func /= <T: BinaryInteger>(rect: inout CGRect, value: T) {
        rect /= CGSize(all: value)
    }
    
    static func /= <T: BinaryFloatingPoint>(rect: inout CGRect, value: T) {
        rect /= CGSize(all: value)
    }
    
    static func /= (left: inout CGRect, right: CGSize) {
        left = left / right
    }

}
