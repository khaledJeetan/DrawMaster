//
//  Square.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 09/11/2023.
//

import Foundation
import UIKit

class Rectangle: Shape{
    
    
    override func draw() {
        let rectanglePath = UIBezierPath()
        let points = helper.getRectPoints(firstPoint: from, secondPoint: to)
        rectanglePath.move(to: from)
        rectanglePath.addLine(to:points[0] )
        rectanglePath.addLine(to: to)
        rectanglePath.addLine(to: points[1])
        rectanglePath.close()
        self.path = rectanglePath.cgPath
    }
    
}
