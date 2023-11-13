//
//  Circle.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 09/11/2023.
//

import Foundation
import UIKit

class Circle: Shape{
    
//    override init(){
//        super.init()
//    }
    
    override func draw() {
        
        let circlePath = UIBezierPath()
        
        let center = helper.getCenterPoint(start: from, end: to)
        let radius = helper.getRadius(start: from, end: to)
        circlePath.addArc(withCenter: center, radius: radius, startAngle:0 , endAngle: CGFloat.pi*2, clockwise: true)
        circlePath.close()
        self.path = circlePath.cgPath
    }
    
}
