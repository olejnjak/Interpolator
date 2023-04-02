#if canImport(UIKit)
import UIKit

public extension UIColor {
    
}

public struct ColorInterpolator: InterpolatorType {
    private let start: UIColor
    private let end: UIColor
    
    // MARK: - Initializers
    
    public init(start: UIColor, end: UIColor) {
        self.start = start
        self.end = end
    }
    
    public init(start: CGColor, end: CGColor) {
        self.init(start: UIColor(cgColor: start), end: UIColor(cgColor: end))
    }
    
    // MARK: - Public interface
    
    public func interpolation(for input: CGFloat) -> UIColor {
        let fromComponents = components(from: start)
        let toComponents = components(from: end)

        let r = (1 - input) * fromComponents.r + input * toComponents.r
        let g = (1 - input) * fromComponents.g + input * toComponents.g
        let b = (1 - input) * fromComponents.b + input * toComponents.b
        let a = (1 - input) * fromComponents.a + input * toComponents.a

        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
    
    // MARK: - Private helpers
    
    private func components(from color: UIColor) -> (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        let components = color.cgColor.components ?? []

        switch components.count == 2 {
        case true : return (r: components[0], g: components[0], b: components[0], a: components[1])
        case false: return (r: components[0], g: components[1], b: components[2], a: components[3])
        }
    }
}
#endif
