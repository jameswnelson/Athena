
import Foundation

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
    
    var orientation : Orientation {
        (width > height) ? .landscape : .portrait
    }
    
    var isPanoramic: Bool {
        width > height * 2
    }
    
    var isSquare: Bool {
        width == height
    }
    
}
