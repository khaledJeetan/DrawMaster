//
//  DeleteSelectedCommand.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 12/11/2023.
//

import Foundation
import UIKit


class DeleteSelectedCommand:Command{
    
    override func execute() {
        
        
        SelectCommand(controller).execute()
        
        guard let selectedShape = controller.selectedShape,
              let selecredShapeIndex = controller.shapes.lastIndex(of: selectedShape)
        else{
            return
        }
        controller.shapes.remove(at: selecredShapeIndex )
        selectedShape.removeFromSuperlayer()
    }
}
