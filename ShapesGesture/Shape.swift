//
//  Shape.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 09/11/2023.
//

import UIKit

protocol AbstractShapeMethods: CAShapeLayer{
    func draw()
}

class Shape: CAShapeLayer, AbstractShapeMethods{
    
    var from: CGPoint!
    var to: CGPoint!
    var preferredFillColor:CGColor!
    var preferredStrokeColor: CGColor!
    var preferredLineWidth: CGFloat!
    var helper: ShapeCalculationHelper! = ShapeCalculationHelper()
    
    required override init() {
        super.init()
        applyDefaultStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    func setHelper(_ helper: ShapeCalculationHelper){
        self.helper = helper
    }
   
    // this method to make a deep copy
    func clone() -> Shape {
        let type = type(of: self)
        let copy = type.init()
        copy.path = path
        copy.frame = frame
        copy.bounds = bounds
        copy.from = from
        copy.to = to
        copy.preferredFillColor = preferredFillColor
        copy.preferredStrokeColor = preferredStrokeColor
        copy.preferredLineWidth = preferredLineWidth
        copy.fillColor = fillColor
        copy.strokeColor = strokeColor
        copy.lineWidth = lineWidth
        return copy
    }
    
    func draw() {
        fatalError("This method must be overridden")
    }
   
  
}


extension Shape{
    
    func applyDefaultStyle(){
        lineWidth = 1
        fillColor = UIColor.white.cgColor
        strokeColor = UIColor.black.cgColor
        setFill(false)
    }
    
    func setStyles(fill: CGColor?,stroke: CGColor?, lineWidth: CGFloat?, isFillOn: Bool?){
        
        
        preferredLineWidth = lineWidth ?? 1
        self.lineWidth = preferredLineWidth
        
        preferredFillColor = fill ?? UIColor.white.cgColor
        fillColor = preferredFillColor
        
        preferredStrokeColor = stroke ?? UIColor.black.cgColor
        strokeColor = preferredStrokeColor
        
        setFill(isFillOn ?? false)
        
    }
    
    func setFill(_ fill: Bool){
        self.fillColor =  fill ? preferredFillColor : .none
    }

    func select() {
        self.backgroundColor = UIColor.darkGray.cgColor
    }
    
    func unselect(){
        self.backgroundColor = UIColor.clear.cgColor
    }
    
    func move() {
        self.position = to
    }
}
