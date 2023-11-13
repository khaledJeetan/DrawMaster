//
//  ConfigureShape.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 12/11/2023.
//

import Foundation
import UIKit


class ConfigureShapeCommand:Command{
    
    private weak var shape:Shape?
    
    override func execute() {
        configureStyle(shape: controller.selectedShape)
        configureStyle(shape: controller.shape)
    }
    
    func configureStyle(shape: Shape?){
        shape?.setStyles(fill: controller.selectedFillColor, stroke: controller.selectedStrokeColor, lineWidth: controller.selectedLineWidth, isFillOn: controller.isFillOn)
    }
    
}
