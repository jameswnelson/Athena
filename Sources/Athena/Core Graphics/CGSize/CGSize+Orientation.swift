
import Foundation
import CoreGraphics

public extension CGSize {
    
    func oriented(to orientation: Orientation) -> CGSize {
        
        switch orientation {
        case .landscape:
            return CGSize(width: maxDimension, height: minDimension)
        case .portrait:
            return CGSize(width: minDimension, height: maxDimension)
        case .panoramic:
            return CGSize(width: maxDimension, height: minDimension)
        case .square:
            return CGSize(all: minDimension)
        }
    }
    
    mutating func orient(to orientation: Orientation) {
        self = oriented(to: orientation)
    }
    
}
