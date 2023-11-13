//
//  ViewControllerUISlider.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 12/11/2023.
//

import Foundation
import UIKit


extension ViewController{
    func registerUISlider(){
        lineWidthSlider.addTarget(self, action: #selector(onSliderChange), for: .valueChanged)
    }
    
    
    @objc func onSliderChange(_ sender: UISlider){
        ConfigureShapeCommand(self).execute()
    }
}
