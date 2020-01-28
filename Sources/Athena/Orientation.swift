
import UIKit

public enum Orientation: String {
    
    case landscape, portrait
    
    public init?(raw: String?) {
        
        guard let raw = raw else {
            return nil
        }
        
        switch raw {
        case Orientation.landscape.rawValue: self = .landscape
        case Orientation.portrait.rawValue: self = .portrait
        default: return nil
        }
        
    }
    
}

// MARK: - Orientation of Size

public extension CGSize {
    
    var isPanoramic: Bool {
        width > height * 2
    }
    
    var isSquare: Bool {
        width == height
    }
    
    var orientation : Orientation {
        (width > height) ? .landscape : .portrait
    }
    
    func oriented(to orientation: Orientation) -> CGSize {
        
        switch orientation {
        case .landscape:
            return CGSize(width: maxDimension, height: minDimension)
        case .portrait:
            return CGSize(width: minDimension, height: maxDimension)
        }
    }
    
    mutating func orient(to orientation: Orientation) {
        self = oriented(to: orientation)
    }
    
}
