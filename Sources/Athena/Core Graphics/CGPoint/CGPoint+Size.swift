
import Foundation
import CoreGraphics

public extension CGPoint {
    
    var size: CGSize {
        CGSize.init(width: x, height: y)
    }
    
    init(_ size: CGSize) {
        self = CGPoint.init(x: size.width, y: size.height)
    }
    
}
