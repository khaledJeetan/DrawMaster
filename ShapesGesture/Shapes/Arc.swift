//
//  Arc.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 11/11/2023.
//

import Foundation
import UIKit

class Arc: Shape{
    
    override func draw() {
        let arcPath = UIBezierPath()
        let center = helper.getCenterPoint(start: from, end: to)
        let radius = helper.getRadius(start: from, end: to)
        arcPath.addArc(withCenter: center, radius: radius, startAngle:0, endAngle: CGFloat.pi, clockwise: true)
        arcPath.close()
        self.path = arcPath.cgPath
        
    }
    
}
