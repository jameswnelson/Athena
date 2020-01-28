
import UIKit

// TODO: This does not belong in Athena, perhaps Apollo (Strings)

public extension CGPoint {
    
    // MARK: String
    
    func string(withFormat format: String) -> String {
        .init(format: format, x, y)
    }
    
    func string(formatPrecision format: String) -> String {
        string(withFormat: format+GeomertyKeys.MultiplicationSymbol+format)
    }

}
