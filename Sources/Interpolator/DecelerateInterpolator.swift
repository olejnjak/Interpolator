import CoreGraphics

public struct DecelerateInterpolator: InterpolatorType {
    private let factor: CGFloat
    
    // MARK: - Initializers
    
    public init(factor: CGFloat = 1) {
        self.factor = factor
    }
    
    // MARK: - Public interface
    
    public func interpolation(for input: CGFloat) -> CGFloat {
        if factor == 1 {
            return (1.0 - (1.0 - input) * (1.0 - input))
        }
        return (1.0 - pow((1.0 - input), 2 * factor))
    }
}
