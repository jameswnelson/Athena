
import Foundation
import CoreGraphics

public extension CGRect {
    
    var topEdge: CGPoint {
        return CGPoint(x: midX, y: minY)
    }
    
    var leftEdge: CGPoint {
        return CGPoint(x: minX, y: midY)
    }
    
    var bottomEdge: CGPoint {
        return CGPoint(x: midX, y: maxY)
    }
    
    var rightEdge: CGPoint {
        return CGPoint(x: maxX, y: midY)
    }
    
    var edges : [CGPoint] {
        return [topEdge, leftEdge, bottomEdge, rightEdge]
    }
    
}
