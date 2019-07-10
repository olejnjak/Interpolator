//
//  TimeInterpolator.swift
//  Interpolator
//
//  Created by Jakub Olejník on 10/07/2019.
//  Copyright © 2019 Jakub Olejnik. All rights reserved.
//

import CoreGraphics

public protocol Interpolator {
    func interpolation(for input: CGFloat) -> CGFloat
}
