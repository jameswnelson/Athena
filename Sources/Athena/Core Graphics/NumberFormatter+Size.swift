
import UIKit

public typealias SizeFormatter = NumberFormatter

public extension SizeFormatter {
    
    private static let formatter = SizeFormatter(digits: (0, 2))
    
    static func formatted(_ size: CGSize) -> String {
        formatter.componented(size.width, size.height)
    }
    
    static func standardizedFormat(_ size: CGSize) -> String {
        formatter.componented(size.minDimension, size.maxDimension)
    }
    
    private func componented(_ one: CGFloat, _ two: CGFloat) -> String {
        string(one) + GeomertyKeys.MultiplicationSymbol + string(two)
    }
    
    private func string(_ value: CGFloat) -> String {
        string(for: value) ?? ""
    }
    
}

// MARK: Private

fileprivate extension SizeFormatter {
    
    typealias FractionDigits = (min: Int, max: Int)
    convenience init(digits: FractionDigits) {
        
        self.init()
        minimumFractionDigits = digits.min
        maximumFractionDigits = digits.max
    }
    
    
}
