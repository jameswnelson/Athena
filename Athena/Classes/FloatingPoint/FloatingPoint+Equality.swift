
import Foundation

public extension BinaryFloatingPoint {
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - value: <#value description#>
    ///   - epsilon: <#epsilon description#>
    /// - Returns: <#return value description#>
    func equalTo<A: BinaryFloatingPoint, B: BinaryFloatingPoint>(_ value: A, epsilon: B = 0.001) -> Bool {
        
        let fabsDiff = difference(self, value)
        return fabsDiff < Double(epsilon) * fabs(Double(self) + Double(value)) ||
            fabsDiff < .leastNormalMagnitude
    }
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - value: <#value description#>
    ///   - variance: <#variance description#>
    /// - Returns: <#return value description#>
    func near<A: BinaryFloatingPoint, B: BinaryFloatingPoint>(_ value: A, variance: B) -> Bool {
        difference(self, value) < Double(variance)
    }
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - lhs: <#lhs description#>
    ///   - rhs: <#rhs description#>
    /// - Returns: <#return value description#>
    private func difference<A: BinaryFloatingPoint, B: BinaryFloatingPoint>(_ lhs: A, _ rhs: B) -> Double {
        fabs(Double(rhs) - Double(lhs))
    }
    
}
