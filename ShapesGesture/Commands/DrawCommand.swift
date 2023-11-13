//
//  DrawLineCommand.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 09/11/2023.
//

import Foundation

class DrawCommand: Command {
 
    override func execute() {
            
        guard let shape = controller.shape else{
            return
        }
        
        switch controller.tapState{
        case .began:
            shape.from = controller.tapPointLocation
            break
            
        case .changed:
            if !controller.isDrawingNew{
                controller.drawingView.layer.sublayers?.removeLast()
            }
            drawShapeOnScreen(shape)
            controller.isDrawingNew = false
            break
            
        case .ended:
            let copy = shape.clone()
            shape.path = nil
            
            drawShapeOnScreen(copy)
            controller.shapes.append(copy)
            controller.isDrawingNew = true
            break

        default:
            print("gesture Error...")
            break;
        }
        
    }
    
    private func drawShapeOnScreen(_ shape: Shape){
        shape.to = controller.tapPointLocation
        shape.draw()
        controller.drawingView.layer.addSublayer(shape)
        shape.bounds = shape.path!.boundingBox
        shape.frame = shape.path!.boundingBox
    }
    
}
