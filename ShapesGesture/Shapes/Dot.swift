//
//  FreeShape.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 13/11/2023.
//

import Foundation
import UIKit

class Dot:Shape{
    
    override func draw() {
        let dotPath = UIBezierPath()
        dotPath.addArc(withCenter: to , radius: lineWidth, startAngle:0 , endAngle: CGFloat.pi*2, clockwise: true)
        self.path = dotPath.cgPath
        self.strokeColor = self.fillColor
    }
}
