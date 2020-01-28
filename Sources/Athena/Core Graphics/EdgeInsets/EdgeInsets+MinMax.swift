
import UIKit

public extension UIEdgeInsets {
    
    mutating func max(by value: CGFloat) {
        self = maxed(by: value)
    }
    
    func maxed(by value: CGFloat) -> Self {
        .init(
            Swift.max(top, value),
            Swift.max(left, value),
            Swift.max(bottom, value),
            Swift.max(right, value)
        )
    }
    
}
