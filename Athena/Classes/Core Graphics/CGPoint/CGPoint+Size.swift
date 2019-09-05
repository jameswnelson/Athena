
import Foundation

extension CGPoint {
    
    var size: CGSize {
        return CGSize.init(width: x, height: y)
    }
    
    init(_ size: CGSize) {
        self = CGPoint.init(x: size.width, y: size.height)
    }
    
}
