
import Foundation
import CoreGraphics

// TODO: This does not belong in Athena, perhaps Apollo (Strings)

public extension CGSize {
    
    init?(
        components string: String,
        seperatedBy by: String = GeomertyKeys.MultiplicationSymbol,
        useFloats: Bool = false
    ) {
        
        let components = string.components(separatedBy: by)
        
        guard
            let first = components.first as NSString?,
            let last = components.last as NSString?
        else {
            return nil
        }
        
        if useFloats {
            self.init(width: first.floatValue, height: last.floatValue)
        } else {
            self.init(width: CGFloat(first.integerValue), height: CGFloat(last.integerValue))
        }
        
    }
    
    var string : String {
        string(format: GeomertyKeys.DefaultFloatFormat)
    }
    
    func string(formatPrecision format: String) -> String {
        string(format: format+GeomertyKeys.MultiplicationSymbol+format)
    }
    
    func string(format: String) -> String {
        String.init(format: format, width, height)
    }
    
}
