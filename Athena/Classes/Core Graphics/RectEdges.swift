
import Foundation

public extension CGRect {
    
    var topEdge: CGPoint {
        CGPoint(x: midX, y: minY)
    }
    
    var leftEdge: CGPoint {
        CGPoint(x: minX, y: midY)
    }
    
    var bottomEdge: CGPoint {
        CGPoint(x: midX, y: maxY)
    }
    
    var rightEdge: CGPoint {
        CGPoint(x: maxX, y: midY)
    }
    
    var edges : [CGPoint] {
        [topEdge, leftEdge, bottomEdge, rightEdge]
    }
    
}
