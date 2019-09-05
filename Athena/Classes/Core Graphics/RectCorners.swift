
import Foundation

public struct RectCorners {

    public enum Name {
        case topLeft, topRight, bottomLeft, bottomRight
    }
    
    public var topLeft, topRight, bottomLeft, bottomRight : CGPoint
    
    public init(topLeft: CGPoint, topRight: CGPoint, bottomLeft: CGPoint, bottomRight: CGPoint) {
        
        self.topLeft = topLeft
        self.topRight = topRight
        self.bottomLeft = bottomLeft
        self.bottomRight = bottomRight
    }
    
    public var array : [CGPoint] {
        return [ topLeft, topRight, bottomLeft, bottomRight ]
    }

    public var flippedY : RectCorners {
    
        return RectCorners(topLeft: CGPoint(x: topLeft.x, y: bottomLeft.y),
                           topRight: CGPoint(x: topRight.x, y: bottomRight.y),
                           bottomLeft: CGPoint(x: bottomLeft.x, y: topLeft.y),
                           bottomRight: CGPoint(x: topLeft.x, y: topRight.y))
    }
    
    public func corner(_ name: Name) -> CGPoint {
        
        switch name {
        case .topLeft:      return topLeft
        case .topRight:     return topRight
        case .bottomLeft:   return bottomLeft
        case .bottomRight:  return bottomRight
        }
    }
    
    public mutating func flipY() {
        // Since both top points match and both bottom points match we can treat one as a temp
        topLeft.y = bottomRight.y
        bottomLeft.y = topRight.y
        
        topRight.y = topLeft.y
        bottomRight.y = bottomLeft.y
    }
    
}

public extension CGRect {
    
    var topLeft: CGPoint {
        return CGPoint(x: minX, y: minY)
    }
    
    var topRight: CGPoint {
        return CGPoint(x: maxX, y: minY)
    }
    
    var bottomLeft: CGPoint {
        return CGPoint(x: minX, y: maxY)
    }
    
    var bottomRight: CGPoint {
        return CGPoint(x: maxX, y: maxY)
    }
    
    var corners : RectCorners {
        return RectCorners(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft, bottomRight: bottomRight)
    }
    
    var flippedCorners : RectCorners {
        return RectCorners(topLeft: bottomLeft, topRight: bottomRight, bottomLeft: topLeft, bottomRight: topRight)
    }
    
    func corner(_ name: CornerName) -> CGPoint {
        
        switch name {
        case .topLeft:     return topLeft
        case .topRight:    return topRight
        case .bottomLeft:  return bottomLeft
        case .bottomRight: return bottomRight
        }
    }
    
    enum CornerName {
        case topLeft, topRight, bottomLeft, bottomRight
    }
    
    typealias Anchor = (name: CornerName, point: CGPoint)
    
    mutating func overrideCorner(oppositeOf anchor: Anchor, with point: CGPoint, limitSizeTo: CGSize? = nil) {
        self = .init(corner: anchor, opposite: point, limited: limitSizeTo)
    }
    
    init(corner anchor: Anchor, opposite point: CGPoint, limited to: CGSize?) {
        
        let (min, size): (CGPoint, CGSize)
        switch anchor.name {
        case .topLeft:
            min = anchor.point
            let max = point.maxed(by: min)
            size = CGSize(max-min)
            
        case .topRight:
            min = CGPoint(x: Swift.min(point.x, anchor.point.x), y: anchor.point.y)
            let max = CGPoint(x: anchor.point.x, y: Swift.max(point.y, anchor.point.y))
            size = CGSize(max-min)
            
        case .bottomLeft:
            min = CGPoint(x: anchor.point.x, y: Swift.min(point.y, anchor.point.y))
            let max = CGPoint(x: Swift.max(point.x, anchor.point.x), y: anchor.point.y)
            size = CGSize(max-min)
            
        case .bottomRight:
            let max = anchor.point
            min = point.minned(by: max)
            size = CGSize(max-min)
        }
        self = CGRect(origin: min, size: size)
        
        guard let to = to else { return }
        limit(to: to, oppositeOf: anchor)
    }
    
    mutating func limit(to limit: CGSize, oppositeOf anchor: Anchor) {
        
        switch anchor.name {
        case .topLeft: break
        case .topRight: origin.x += Swift.min(size.width-limit.width, 0)
        case .bottomLeft: origin.y += Swift.min(size.height-limit.height, 0)
        case .bottomRight: origin += (size-limit).point.minned(by: 0)
        }
        size.max(by: limit)
    }
    
}
