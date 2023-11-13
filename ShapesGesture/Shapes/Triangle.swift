//
//  Triangle.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 11/11/2023.
//

import Foundation
import UIKit

class Triangle: Shape{
    override func draw() {
        let trianglePath = UIBezierPath()
        trianglePath.move(to: from)
        
        let points = helper.getTrianglePoints(firstPoint: from, secondPoint: to)
        
        trianglePath.addLine(to: points[0])
        trianglePath.addLine(to: points[1])
        trianglePath.close()
        self.path = trianglePath.cgPath
    }
        
}
