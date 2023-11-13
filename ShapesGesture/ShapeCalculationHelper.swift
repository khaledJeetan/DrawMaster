//
//  ShapeCalculation.swift
//  ShapesGesture
//
//  Created by Prince Jeetan on 12/11/2023.
//

import Foundation
import UIKit


class ShapeCalculationHelper{
    
    func getCenterPoint(start: CGPoint, end: CGPoint)-> CGPoint{
        let distance = CGPoint(x: (end.x-start.x).magnitude, y: (end.y - start.y).magnitude)
        let minY = CGFloat.minimum(start.y, end.y)
        let minX = CGFloat.minimum(start.x, end.x)
        return CGPoint(x: distance.x/2 + minX, y: distance.y/2 + minY)
    }
    
    func getRadius(start: CGPoint, end: CGPoint)-> CGFloat{
        return CGFloat.maximumMagnitude((end.x-start.x)/2, (end.y - start.y)/2)
    }
    
    func getRectPoints(firstPoint: CGPoint, secondPoint: CGPoint) -> [CGPoint]{
        
        return [CGPoint(x: firstPoint.x, y: secondPoint.y),
                CGPoint(x: secondPoint.x, y: firstPoint.y)]
    }
    
    func getTrianglePoints(firstPoint: CGPoint, secondPoint: CGPoint) -> [CGPoint]{
        
        return [CGPoint(x: secondPoint.x, y: secondPoint.y),
                CGPoint(x: secondPoint.x, y: firstPoint.y)]
    }
    
    func calculateControlPoint(start: CGPoint, end: CGPoint) -> CGPoint {
            return CGPoint(x: (start.x + end.x) / 2, y: (start.y + end.y) / 2)
        }
    
    func calculateCubicControlPoints(start: CGPoint, end: CGPoint, factor1: CGFloat, factor2: CGFloat) -> (CGPoint, CGPoint) {
        // First control point for a cubic Bézier curve
        let controlPoint1 = CGPoint(x: start.x + factor1 * (end.x - start.x), y: start.y)
        
        // Second control point for a cubic Bézier curve
        let controlPoint2 = CGPoint(x: end.x - factor2 * (end.x - start.x), y: end.y)
        
        return (controlPoint1, controlPoint2)
    }
    
    func calculateQuadraticControlPoint(start: CGPoint, end: CGPoint, factor: CGFloat) -> CGPoint {
        // Control point for a quadratic Bézier curve is the midpoint
        let midpoint = CGPoint(x: (start.x + end.x) / 2, y: (start.y + end.y) / 2)
        
        // Adjust the control point based on the factor
        let controlPoint = CGPoint(x: midpoint.x, y: midpoint.y + factor * (midpoint.y - start.y))
        
        return controlPoint
    }
    
}
