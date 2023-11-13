//
//  Line.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 09/11/2023.
//

import Foundation

import UIKit

class Line: Shape{
    
    
    override func draw() {
        let linePath = UIBezierPath()
        linePath.move(to: from)
        linePath.addLine(to: to)
        linePath.close()
        self.path = linePath.cgPath
    }
}
