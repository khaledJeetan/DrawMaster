//
//  gestureDelegate.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 09/11/2023.
//

import Foundation
import UIKit


extension ViewController: UIGestureRecognizerDelegate{
    func registerLongPressGesture(){
        longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(onLongPressGesture))
        longPressGesture.minimumPressDuration = 0
        drawingView.addGestureRecognizer(longPressGesture)
    }
    
    @objc func onLongPressGesture(_ gesture: UILongPressGestureRecognizer){
        guard command != nil || shape != nil else{
            return
        }
        ConfigureShapeCommand(self).execute()
        command.execute()
    }
}
