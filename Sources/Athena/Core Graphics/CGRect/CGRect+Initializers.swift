
import Foundation
//import CoreGraphics
import AVFoundation.AVUtilities

// MARK: - Various

public extension CGRect {
        
    /// <#Description#>
    ///
    /// Because this uses AV Foundation Utilites for it's calculation it will be relatively slow.
    ///
    /// - Parameters:
    ///   - ratio: <#ratio description#>
    ///   - rect: <#rect description#>
    init(aspectRatio ratio: CGSize, inside rect: CGRect) {
        self = AVMakeRect(aspectRatio: ratio, insideRect: rect)
    }
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - point: <#point description#>
    ///   - insets: <#insets description#>
    init(point: CGPoint, insets: UIEdgeInsets) {
        self = CGRect.init(origin: point, size: .zero).insetted(insets)
    }
    
    /// Take a min point which will be the origin and a max point which will be subtracted by the min point to determine the rectabgle's size.
    ///
    /// - Parameters:
    ///   - minPoint: The origin of the retuned rect.
    ///   - maxPoint: The largest point of the rectangle. This will be subtracted by the minPoint to determine the size.
    init(minPoint: CGPoint, maxPoint: CGPoint) {
        self.init(origin: minPoint, size: CGSize(maxPoint-minPoint))
    }
    
    /// Takes a cernter and size and returns a rect with matching values.
    /// This is useful when we want to maintain a center but want a larger size.
    ///
    /// - Parameters:
    ///   - center: The center of the rectangle.
    ///   - size: The size of the rectangle.
    init(center: CGPoint, size: CGSize) {
        self = CGRect.init(origin: center, size: .zero).outsetted(size/2)
    }
    
    /// Creates a CGRect where the min point will be the smallest x & y and the max point will be the largest x & y.
    /// *Note:* It is worth noting that the largest x & y will not technically be contained by this rect, however, they will be equal to the returned rect's max point.
    ///
    /// - Parameter points: An array of points which the returned rect should contain.
    init(containing points: [CGPoint]) {
        
        guard let first = points.first else {
            self = .zero
            return
        }
        
        var minPoint = first, maxPoint = first
        points.forEach {
            minPoint.min(by: $0)
            maxPoint.max(by: $0)
        }
        
        self = CGRect.init(minPoint: minPoint, maxPoint: maxPoint)
    }
    
}

// MARK: - FloatingPoint

public extension CGRect {
    
    init<T: BinaryFloatingPoint>(x: T = 0, y: T = 0, width: T = 0, height: T = 0) {
        self.init(origin: CGPoint.init(x: x, y: y), size: CGSize.init(width: width, height: height))
    }
    
}

// MARK: - Integer

public extension CGRect {
    
    init<T: BinaryInteger>(x: T = 0, y: T = 0, width: T = 0, height: T = 0) {
        self.init(origin: CGPoint.init(x: x, y: y), size: CGSize.init(width: width, height: height))
    }
    
}

// MARK: - Dictionary

public extension CGRect {
    
    init?(dictionary: [String: String]) {
        
        guard
            let origin = CGPoint.init(dictionary: dictionary),
            let size = CGSize.init(dictionary: dictionary)
        else {
            return nil
        }
        self.init(origin: origin, size: size)
        
    }
    
}
