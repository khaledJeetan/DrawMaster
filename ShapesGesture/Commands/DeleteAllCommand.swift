//
//  DeleteAllCommand.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 09/11/2023.
//

import Foundation

class DeleteAllCommand: Command {
    
    override func execute() {
        controller.shapes.removeAll()
        controller.drawingView.layer.sublayers?.removeAll()
    }
}
