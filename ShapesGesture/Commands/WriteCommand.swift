//
//  WriteCommand.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 13/11/2023.
//

import Foundation

class WriteCommand:Command{
    
    override func execute() {
        let shape = controller.shape?.clone()
        shape?.to = controller.tapPointLocation
        shape?.from = controller.tapPointLocation
        shape?.draw()
        controller.drawingView.layer.addSublayer(shape!)
        controller.shapes.append(shape!)
    }
}
