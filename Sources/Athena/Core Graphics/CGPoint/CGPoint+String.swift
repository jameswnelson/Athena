
import Foundation
import CoreGraphics

// TODO: This does not belong in Athena, perhaps Apollo (Strings)

public extension CGPoint {
    
    // MARK: String
    
    func string(withFormat format: String) -> String {
        return String.init(format: format, x, y)
    }
    
    func string(formatPrecision format: String) -> String {
        return string(withFormat: format+GeomertyKeys.MultiplicationSymbol+format)
    }

}
