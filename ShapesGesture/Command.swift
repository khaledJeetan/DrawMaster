//
//  Shape.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 07/11/2023.
//

import Foundation
import UIKit

protocol AbstractCommands{
    func execute()
}

class Command: AbstractCommands{
    
    weak var controller: ViewController!
    
    init(_ controller: ViewController){
        self.controller = controller
    }
        
    func execute() {
        fatalError("This method must be overridden")
    }
    
}
