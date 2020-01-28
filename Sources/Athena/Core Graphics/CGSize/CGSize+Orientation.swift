
import UIKit

public extension CGSize {
    
    var orientation : Orientation {
        (width > height) ? .landscape : .portrait
    }
    
    var isPanoramic: Bool {
        width > height * 2
    }
    
    var isSquare: Bool {
        width == height
    }
    
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
