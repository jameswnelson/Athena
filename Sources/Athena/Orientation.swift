
import Foundation
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

// MARK: - Public Helpers

public extension CGSize {
    
    var orientation : Orientation {
        return (width > height) ? .landscape : .portrait
    }
    
    var isPanoramic: Bool {
        return width > height * 2
    }
    
    var isSquare: Bool {
        return width == height
    }
    
}
