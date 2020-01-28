
import UIKit

// MARK: - Addition

public extension CGRect {
    
    static func + <T: BinaryInteger>(rect: Self, value: T) -> Self {
        rect + CGSize(all: value)
    }
    
    static func + <T: BinaryFloatingPoint>(rect: Self, value: T) -> Self {
        rect + CGSize(all: value)
    }
    
    static func + (left: Self, right: CGFloat) -> Self {
        left + CGSize(all: right)
    }
    
    static func + (left: Self, right: CGSize) -> Self {
        .init(center: left.center, size: left.size + right)
    }
    
    static func += <T: BinaryInteger>(rect: inout Self, value: T) {
        rect += CGSize(all: value)
    }
    
    static func += <T: BinaryFloatingPoint>(rect: inout Self, value: T) {
        rect += CGSize(all: value)
    }
    
    static func += (left: inout Self, right: CGSize) {
        left = left + right
    }

}

// MARK: - Subtraction

public extension CGRect {
    
    static func - <T: BinaryInteger>(rect: Self, value: T) -> Self {
        rect - CGSize(all: value)
    }
    
    static func - <T: BinaryFloatingPoint>(rect: Self, value: T) -> Self {
        rect - CGSize(all: value)
    }
    
    static func - (left: Self, right: CGSize) -> Self {
        .init(center: left.center, size: left.size - right)
    }
    
    static func -= <T: BinaryInteger>(rect: inout Self, value: T) {
        rect -= CGSize(all: value)
    }
    
    static func -= <T: BinaryFloatingPoint>(rect: inout Self, value: T) {
        rect -= CGSize(all: value)
    }
    
    static func -= (left: inout Self, right: CGSize) {
        left = left - right
    }

}

// MARK: - Multiplication

public extension CGRect {
    
    static func * <T: BinaryInteger>(rect: Self, value: T) -> Self {
        rect * CGSize(all: value)
    }
    
    static func * <T: BinaryFloatingPoint>(rect: Self, value: T) -> Self {
        rect * CGSize(all: value)
    }
    
    static func * (left: Self, right: CGSize) -> Self {
        .init(center: left.center, size: left.size * right)
    }
    
    static func *= <T: BinaryInteger>(rect: inout Self, value: T) {
        rect *= CGSize(all: value)
    }
    
    static func *= <T: BinaryFloatingPoint>(rect: inout Self, value: T) {
        rect *= CGSize(all: value)
    }
    
    static func *= (left: inout Self, right: CGSize) {
        left = left * right
    }

}

// MARK: - Division

public extension CGRect {
    
    static func / <T: BinaryInteger>(rect: Self, value: T) -> Self {
        rect / CGSize(all: value)
    }
    
    static func / <T: BinaryFloatingPoint>(rect: Self, value: T) -> Self {
        rect / CGSize(all: value)
    }
    
    static func / (left: Self, right: CGSize) -> Self {
        .init(center: left.center, size: left.size / right)
    }
    
    static func /= <T: BinaryInteger>(rect: inout Self, value: T) {
        rect /= CGSize(all: value)
    }
    
    static func /= <T: BinaryFloatingPoint>(rect: inout Self, value: T) {
        rect /= CGSize(all: value)
    }
    
    static func /= (left: inout Self, right: CGSize) {
        left = left / right
    }

}
