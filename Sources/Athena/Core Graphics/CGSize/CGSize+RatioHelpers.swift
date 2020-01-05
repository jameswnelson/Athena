
import Foundation
import AVFoundation
import CoreGraphics

public extension CGSize {
    
    init(aspectRatio ratio: CGSize, insideRect rect: CGRect) {
        self = AVMakeRect(aspectRatio: ratio, insideRect: rect).size
    }
    
    var widthRatio : CGFloat {
        return width / height
    }
    
    var heightRatio : CGFloat {
        return height / width
    }
    
    func fitting(aspectRatio ratio: CGSize) -> CGSize {
        
        let m = self / ratio
        
        if m.width > m.height {
            return CGSize(width: m.height * ratio.width, height: height)
        }
        if m.height > m.width {
            return CGSize(width: width, height: m.width * ratio.height)
        }
        return self
        
    }
    
    mutating func fit(aspectRatio ratio: CGSize) {
        self = fitting(aspectRatio: ratio)
    }
    
    func filling(aspectRatio ratio: CGSize) -> CGSize {
        
        let m = self / ratio
        
        if m.width > m.height {
            return CGSize(width: width, height: m.width * ratio.height)
        }
        if m.height > m.width  {
            return CGSize(width: m.height * ratio.width, height: height)
        }
        return self
        
    }
    
    mutating func fill(aspectRatio ratio: CGSize) {
        self = filling(aspectRatio: ratio)
    }

}
