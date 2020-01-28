
import UIKit

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
        
        .init(
            top: rect.y - y,
            left: rect.x - x,
            bottom: rect.maxY - maxY,
            right: rect.maxX - maxX
        )
    }
    
    func insetDifferenceFromOrigin(_ rect: CGRect) -> UIEdgeInsets {
        
        .init(
            top: rect.y - y,
            left: rect.x - x,
            bottom: rect.maxY - y,
            right: rect.maxX - x
        )
    }
    
}

