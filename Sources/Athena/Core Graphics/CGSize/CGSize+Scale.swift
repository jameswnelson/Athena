
import Foundation
import CoreGraphics

// MARK: - Fit

public extension CGSize {
    
    mutating func fit(_ size: CGSize) {
        self = fitted(size)
    }
    
    func fitted(_ size: CGSize) -> CGSize {
        return self * (size / self).minDimension
    }
    
}

// MARK: - Integer Fit

public extension CGSize {
    
    mutating func fit<T: BinaryInteger>(height newHeight: T) {
        self = fitted(height: newHeight)
    }
    
    func fitted<T: BinaryInteger>(height newHeight: T) -> CGSize {
        return fitted(height: Float(newHeight))
    }
    
    mutating func fit<T: BinaryInteger>(width newWidth: T) {
        self = fitted(width: newWidth)
    }
    
    func fitted<T: BinaryInteger>(width newWidth: T) -> CGSize {
        return fitted(width: Float(newWidth))
    }
    
}

// MARK: - Floating Point Fit

public extension CGSize {
    
    mutating func fit<T: BinaryFloatingPoint>(height newHeight: T) {
        self = fitted(height: newHeight)
    }
    
    func fitted<T: BinaryFloatingPoint>(height newHeight: T) -> CGSize {
        return CGSize.init(width: width * (CGFloat(newHeight) / height), height: CGFloat(newHeight))
    }
    
    mutating func fit<T: BinaryFloatingPoint>(width newWidth: T) {
        self = fitted(width: newWidth)
    }
    
    func fitted<T: BinaryFloatingPoint>(width newWidth: T) -> CGSize {
        return CGSize.init(width: width, height: height * (CGFloat(newWidth) / width))
    }

}

// MARK: - Fill

public extension CGSize {

    mutating func fill(_ size: CGSize) {
        self = filling(size)
    }
    
    func filling(_ size: CGSize) -> CGSize {
        return self * (size / self).maxDimension
    }
    
}
