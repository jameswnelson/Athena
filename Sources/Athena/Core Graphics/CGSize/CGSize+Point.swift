
import Foundation
import CoreGraphics

public extension CGSize {
    
    var point : CGPoint {
        CGPoint.init(x: width, y: height)
    }
    
    init(_ point: CGPoint) {
        self = CGSize.init(width: point.x, height: point.y)
    }
    
}
