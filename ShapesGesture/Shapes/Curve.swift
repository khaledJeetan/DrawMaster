//
//  Curve.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 12/11/2023.
//

import Foundation
import UIKit


class Curve: Shape{
    
    override func draw() {
        let curvePath = UIBezierPath()
        let controlPoint = helper.calculateQuadraticControlPoint(start: from, end: to, factor: 10)
        curvePath.move(to: from)
        curvePath.addQuadCurve(to: to, controlPoint: controlPoint)
        self.path = curvePath.cgPath
    }
   
}
