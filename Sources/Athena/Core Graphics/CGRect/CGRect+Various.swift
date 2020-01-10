
import UIKit
import Foundation
import AVFoundation
import CoreGraphics

// MARK: - Initilizers

public extension CGRect {
    
    init(aspectRatio ratio: CGSize, inside rect: CGRect) {
        self = AVMakeRect(aspectRatio: ratio, insideRect: rect)
    }
    
    init(point: CGPoint, insets: UIEdgeInsets) {
        self = CGRect(origin: point, size: .zero).insetted(insets)
    }
    
    init(minPoint: CGPoint, maxPoint: CGPoint) {
        self.init(origin: minPoint, size: CGSize(maxPoint-minPoint))
    }
    
    init(center: CGPoint, size: CGSize) {
        self = CGRect(origin: center, size: .zero).outsetted(size/2)
    }
    
    init(containing points: CGPoint...) {
        
        guard let first = points.first else {
            self = .zero
            return
        }
        
        var minPoint = first, maxPoint = first
        points.forEach {
            minPoint.min(by: $0)
            maxPoint.max(by: $0)
        }
        self = CGRect(minPoint: minPoint, maxPoint: maxPoint)
    }
    
}

// MARK: - Intersection and Limiting

public extension CGRect {
    
    mutating func clip(to: CGRect) {
        self = intersection(to)
    }
    
    func clipped(to: CGRect) -> CGRect {
        intersection(to)
    }

}

// MARK: - Helpers

public extension CGRect {
    
    var edgeInsets : UIEdgeInsets {
        UIEdgeInsets(top: minY, left: minX, bottom: maxY, right: maxX)
    }
    
    var flipedYAxis : CGRect {
        CGRect(origin: origin.flippedYAxis, size: size)
    }
    
    mutating func flipYAxis() {
        origin.flipYAxis()
    }
    
    func insetDifferenceFromCorner(_ rect: CGRect) -> UIEdgeInsets {
        UIEdgeInsets(
            top: rect.y - y,
            left: rect.x - x,
            bottom: rect.maxY - maxY,
            right: rect.maxX - maxX
        )
    }
    
    func insetDifferenceFromOrigin(_ rect: CGRect) -> UIEdgeInsets {
        UIEdgeInsets(
            top: rect.y - y,
            left: rect.x - x,
            bottom: rect.maxY - y,
            right: rect.maxX - x
        )
    }
    
}

