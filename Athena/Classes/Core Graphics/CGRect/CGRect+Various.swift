
import UIKit
import Foundation

// MARK: - Intersection and Limiting

public extension CGRect {
    
    mutating func clip(to: CGRect) {
        self = intersection(to)
    }
    
    func clipped(to: CGRect) -> CGRect {
        return intersection(to)
    }

}

// MARK: - Helpers

public extension CGRect {
    
    mutating func flipYAxis() {
        origin.flipYAxis()
    }
    
    var flipedYAxis : CGRect {
        return CGRect(origin: origin.flippedYAxis, size: size)
    }
    
    func insetDifferenceFromCorner(_ rect: CGRect) -> UIEdgeInsets {
        
        return UIEdgeInsets(
            top: rect.y - y,
            left: rect.x - x,
            bottom: rect.maxY - maxY,
            right: rect.maxX - maxX
        )
    }
    
    func insetDifferenceFromOrigin(_ rect: CGRect) -> UIEdgeInsets {
        
        return UIEdgeInsets(
            top: rect.y - y,
            left: rect.x - x,
            bottom: rect.maxY - y,
            right: rect.maxX - x
        )
    }
    
}

