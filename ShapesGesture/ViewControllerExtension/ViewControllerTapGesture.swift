////
////  gestureDelegate.swift
////  ShapesGesture
////
////  Created by Prince Jeetan on 09/11/2023.
////
//
//import Foundation
//import UIKit
//
//
//extension ViewController{
//
//    func registerTapGesture(){
//        tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTapGesture))
//       
//        // this is important because i have same gessture type
//        tapGesture.require(toFail: longPressGesture)
//        drawingView.addGestureRecognizer(tapGesture)
//    }
//    
//    @objc func onTapGesture(_ sender: UITapGestureRecognizer){
////        from = tapGesture.location(in: drawingView)
////        command = SelectCommand(self)
////        shape = Shape()
////        
////        command.execute()
//    }
//}
