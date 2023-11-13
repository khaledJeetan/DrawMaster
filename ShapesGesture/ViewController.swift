//
//  ViewController.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 07/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var deleteB: UIButton!
    @IBOutlet weak var penB: UIButton!
    @IBOutlet weak var curveB: UIButton!
    @IBOutlet weak var triangleB: UIButton!
    @IBOutlet weak var arcB: UIButton!
    @IBOutlet weak var circleB: UIButton!
    @IBOutlet weak var selectB: UIButton!
    @IBOutlet weak var squareB: UIButton!
    @IBOutlet weak var lineB: UIButton!
    @IBOutlet weak var drawingView: UIView!
    @IBOutlet weak var fillColor: UIColorWell!
    @IBOutlet weak var strokeColor: UIColorWell!
    @IBOutlet weak var lineWidthSlider: UISlider!
    
    
    var command:Command!
    var shapes:[Shape]!
    var shape: Shape?
    var selectedShape: Shape?
    var selectedButton: UIButton?

    // gesture
    var longPressGesture: UILongPressGestureRecognizer!
    var tapPointLocation: CGPoint{
        longPressGesture.location(in: drawingView)
    }
    var tapState:UILongPressGestureRecognizer.State{
        longPressGesture.state
    }
    
    //shape Control
    @IBOutlet weak var fillSwitch: UISwitch!
    var isFillOn:Bool!{
        fillSwitch.isOn
    }
    var selectedFillColor:CGColor!{
        fillColor.selectedColor?.cgColor
    }
    var selectedStrokeColor:CGColor!{
        strokeColor.selectedColor?.cgColor
    }
    var selectedLineWidth:CGFloat!{
        CGFloat(lineWidthSlider.value)
    }
    
    var isDrawingNew = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shapes = []
        registerLongPressGesture()
        registerUIColorWell()
        registerUISlider()
//        configureTapGesture()
    }
    
    
    func commandSelectedStyle(_ sender: UIButton) {
        
        // reset all buttons styles
        selectedButton?.backgroundColor = .clear
        selectedButton?.tintColor = .lightGray
        // set Selected comand Button style
        
        selectedButton = sender
        selectedButton?.layer.cornerRadius = 20
        selectedButton?.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        selectedButton?.tintColor = .darkGray
        selectedShape = nil
        shape = nil
    }
    
    
    @IBAction func fillShapeSwitch(_ sender: UISwitch) {
        ConfigureShapeCommand(self).execute()
    }
    
    @IBAction func deleteAllDrawings(_ sender: UIButton) {
        DeleteAllCommand(self).execute()
    }
    @IBAction func deleteShapeCommand(_ sender: UIButton) {
        commandSelectedStyle(sender)
        command = DeleteSelectedCommand(self)
        shape = Shape()
    }
    
    @IBAction func selectShapeCommand(_ sender: UIButton) {
        commandSelectedStyle(sender)
        command = SelectCommand(self)
        shape = Shape()

    }
    
    @IBAction func drawCircleCommand(_ sender: UIButton) {
        commandSelectedStyle(sender)
        command = DrawCommand(self)
        shape = Circle()
    }
    @IBAction func drawRectangleCommand(_ sender: UIButton) {
        commandSelectedStyle(sender)
        command = DrawCommand(self)
        shape = Rectangle()
    }
    @IBAction func drawLineCommand(_ sender: UIButton) {
        commandSelectedStyle(sender)
        command = DrawCommand(self)
        shape = Line()
    }
    @IBAction func drawArcCommand(_ sender: UIButton) {
        commandSelectedStyle(sender)
        command = DrawCommand(self)
        shape = Arc()
    }
    @IBAction func drawTriangleCommand(_ sender: UIButton) {
        commandSelectedStyle(sender)
        command = DrawCommand(self)
        shape = Triangle()
    }
    @IBAction func drawCurveCommand(_ sender: UIButton) {
        commandSelectedStyle(sender)
        command = DrawCommand(self)
        shape = Curve()
    }
    
    @IBAction func onWriteCommand(_ sender: UIButton) {
        commandSelectedStyle(sender)
        command = WriteCommand(self)
        shape = Dot()
    }
    
    
}

