import CoreGraphics

public struct AccelerateInterpolator: InterpolatorType {
    private let factor: CGFloat
    private let doubleFactor: CGFloat
    
    // MARK: - Initializers
    
    public init(factor: CGFloat = 1) {
        self.factor = factor
        self.doubleFactor = factor * 2
    }
    
    // MARK: - Public interface
    
    public func interpolation(for input: CGFloat) -> CGFloat {
        if factor == 1 {
            return input * input
        } else {
            return pow(input, doubleFactor)
        }
    }
}
