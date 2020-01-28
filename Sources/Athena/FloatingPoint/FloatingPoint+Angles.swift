
import Foundation

public extension BinaryFloatingPoint {
    
    /// <#Description#>
    var radians: Self {
        self * .pi / 180
    }
    
    /// <#Description#>
    mutating func makeRadian() {
        self = radians
    }
    
    /// <#Description#>
    var degrees: Self {
        self * 180.0 / .pi
    }
    
    /// <#Description#>
    mutating func makeDegrees() {
        self = degrees
    }
    
}
