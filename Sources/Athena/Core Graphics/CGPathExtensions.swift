
import UIKit

public extension CGMutablePath {
    
    class func path(from points: CGPoint...) -> Self {
        
        let path = Self()
        guard let first = points.first else {
            return path
        }
        
        path.move(to: first)
        points.dropFirst().forEach { path.addLine(to: $0) }
        path.closeSubpath()
        
        return path
    }
    
}

// MARK: Paths with a Tail (like a popover arrow)

public extension CGPath {
    
    enum ArrowDirection {
        case right, rightExpanded
    }
    
    typealias TailInfo = (width: CGFloat, length: CGFloat)
    
    // TODO: Add support for specificy the tail direction and placement/location.
    static func roundedRect(in bounds: CGRect, withTail tail: TailInfo, cornerRadius radius: CGFloat) -> CGPath {
        
        let path = CGMutablePath()
        
        // Top and right side
        path.move(to: bounds.topLeft)
        path.addLine(to: bounds.topRight)
        
        // Bottom Right corner
        path.addLine(to: bounds.bottomRight + CGPoint(x: 0, y: -tail.length-radius))
        path.addQuadCurve(to: bounds.bottomRight + CGPoint(x: -radius, y: -tail.length),
                          control: bounds.bottomRight + CGPoint(x: 0, y: -tail.length))
        
        // Tail
        path.addDownTail(point: bounds.bottomEdge, tail: tail)
        
        // Bottom Left corner
        path.addLine(to: bounds.bottomLeft + CGPoint(x: radius, y: -tail.length))
        path.addQuadCurve(to: bounds.bottomLeft + CGPoint(x: 0, y: -tail.length-radius),
                          control: bounds.bottomLeft + CGPoint(x: 0, y: -tail.length))
        
        path.closeSubpath()
        
        return path
    }
    
    static func sharpRect(in bounds: CGRect, withTail tail: TailInfo, _ arrowDirection: ArrowDirection) -> CGPath {
        
        let path = CGMutablePath()
        
        path.move(to: bounds.topLeft)
        path.addLine(to: bounds.topRight + CGPoint(x: -4, y: 0))
        
        switch arrowDirection{
        case .right:
            path.addLine(to: bounds.bottomRight + CGPoint(x: -4, y: -16))
            path.addLine(to: bounds.rightEdge)
            path.addLine(to: bounds.bottomRight + CGPoint(x: -4, y: -8))
        case .rightExpanded:
            path.addLine(to: bounds.bottomRight + CGPoint(x: -4, y: -33.5))
            path.addLine(to: bounds.rightEdge)
            path.addLine(to: bounds.bottomRight + CGPoint(x: -4, y: -41.5))
        }
        
        path.addLine(to: bounds.bottomRight + CGPoint(x: -4, y: 0))
        path.addLine(to: bounds.bottomLeft)
        
        path.closeSubpath()
        
        return path
    }
    
}

public extension CGMutablePath {
    
    func addDownTail(point: CGPoint, tail: TailInfo) {
        
        addLine(to: point + CGPoint(x: tail.width, y: -tail.length))
        addLine(to: point)
        addLine(to: point - CGPoint(x: tail.width, y: tail.length))
    }
    
    func addRightTail(point: CGPoint, tail: TailInfo) {
        
        addLine(to: point + CGPoint(x: tail.width, y: -tail.length))
        addLine(to: point)
        addLine(to: point - CGPoint(x: tail.width, y: tail.length))
    }
    
}
