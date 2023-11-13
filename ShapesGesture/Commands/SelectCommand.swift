//
//  SelectCommand.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 09/11/2023.
//

import Foundation

class SelectCommand: Command{
    
    override func execute() {
        
        switch controller.tapState{
            
        case .changed:
            
            controller.selectedShape?.to = controller.tapPointLocation
            controller.selectedShape?.move()

            break
            
        case .ended:
               let shapeAt = controller.tapPointLocation
            let selectedShape = controller.shapes.last {
                shape in
                shape.frame.contains(shapeAt)
            }
            controller.selectedShape?.unselect()
            controller.selectedShape = selectedShape
            selectedShape?.select()
            break
            
        default:
            break
        }
    }
}
