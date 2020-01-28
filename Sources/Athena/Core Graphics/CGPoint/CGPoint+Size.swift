
import UIKit

public extension CGPoint {
    
    var size: CGSize {
        .init(width: x, height: y)
    }
    
    init(_ size: CGSize) {
        self = CGPoint.init(x: size.width, y: size.height)
    }
    
}
