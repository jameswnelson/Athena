
import Foundation
import UIKit

public enum Orientation: String {
    
    case landscape
    case portrait
    case square
    case panoramic
    
}

// MARK: - Public Helpers

public extension Orientation {
    
    static var `default`: Self {
        .landscape
    }
    
    init?(raw: String?) {
        switch raw {
        case Self.landscape.rawValue:
            self = .landscape
        case Self.portrait.rawValue:
            self = .portrait
        case Self.square.rawValue:
            self = .square
        case Self.panoramic.rawValue:
            self = .panoramic
        default:
            return nil
        }
    }
    
    func flipped() -> Orientation {
        switch self {
        case .square:
            return .square
        case .landscape:
            return .portrait
        case .portrait:
            return .landscape
        case .panoramic:
            return .panoramic
        }
    }
    
    mutating func flip() {
        self = flipped()
    }
    
}
