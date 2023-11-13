//
//  ViewControllerUIColorWell.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 09/11/2023.
//

import Foundation
import UIKit

extension ViewController{
    func registerUIColorWell(){
        fillColor.addTarget(self, action: #selector(onColorChange), for: .valueChanged)
        strokeColor.addTarget(self, action: #selector(onColorChange), for: .valueChanged)
    }
    
    @objc func onColorChange(color: UIColorWell){
        ConfigureShapeCommand(self).execute()
    }
}
