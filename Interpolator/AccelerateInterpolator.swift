//
//  AccelerateInterpolator.swift
//  Interpolator
//
//  Created by Jakub Olejník on 10/07/2019.
//  Copyright © 2019 Jakub Olejnik. All rights reserved.
//

import CoreGraphics

public struct AccelerateInterpolator: Interpolator {
    private let factor: CGFloat
    private let doubleFactor: CGFloat
    
    // MARK: - Initializers
    
    public init(factor: CGFloat = 1) {
        self.factor = factor
        self.doubleFactor = factor * 2
    }
    
    public func interpolation(for input: CGFloat) -> CGFloat {
        if factor == 1 {
            return input * input
        } else {
            return pow(input, doubleFactor)
        }
    }
}
