
import Foundation
import CoreGraphics
import UIKit

public extension UIEdgeInsets {
    
    mutating func max(by: value: CGFloat) {
        self = maxed(to: value)
    }
    
    func maxed(by value: CGFloat) -> UIEdgeInsets {
        return UIEdgeInsets.init(max(top, value), max(left, value), max(bottom, value), max(right, value))
    }
    
}
