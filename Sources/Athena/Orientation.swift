
import Foundation
import UIKit

public enum Orientation: String {
    
    case landscape, portrait, square, panoramic
    
    public init?(raw: String?) {
        
//        guard let raw = raw else {
//            return nil
//        }
        
        switch raw {
        case Self.landscape.rawValue: self = .landscape
        case Self.portrait.rawValue: self = .portrait
        case Self.square.rawValue: self = .square
        case Self.panoramic.rawValue: self = .panoramic
        default: return nil
        }
        
    }
    
    public mutating func flip() {
        self = flipped()
    }
    
    public func flipped() -> Orientation {
        switch self {
        case .square:    return .square
        case .landscape: return .portrait
        case .portrait:  return .landscape
        case .panoramic: return .panoramic
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
