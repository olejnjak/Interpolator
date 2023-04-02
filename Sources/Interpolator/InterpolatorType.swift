public protocol InterpolatorType {
    associatedtype Input
    associatedtype Output
    
    func interpolation(for input: Input) -> Output
}
