//
//  DecelerateInterpolator.swift
//  Interpolator
//
//  Created by Jakub Olejník on 10/07/2019.
//  Copyright © 2019 Jakub Olejnik. All rights reserved.
//

import CoreGraphics

public struct DecelerateInterpolator: Interpolator {
    private let factor: CGFloat
    
    // MARK: - Initializers
    
    public init(factor: CGFloat = 1) {
        self.factor = factor
    }
    
    public func interpolation(for input: CGFloat) -> CGFloat {
        if factor == 1 {
            return (1.0 - (1.0 - input) * (1.0 - input))
        }
        return (1.0 - pow((1.0 - input), 2 * factor))
    }
}
