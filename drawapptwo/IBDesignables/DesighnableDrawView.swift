//
//  DesighnableDrawView.swift
//  drawapptwo
//
//  Created by Azizur Rahman on 2018-01-12.
//  Copyright © 2018 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class DesighnableDrawView: UIView {
    
    var strokeSize : Float = 10.0
    var lines: [Line] = []
    var lastPoint: CGPoint!
    var lineColor = UIColor.black.cgColor
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.lastPoint = touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let newPoint = touches.first?.location(in: self)
        self.lines.append(Line(startPoint: self.lastPoint, endPoint: newPoint!, strokeColor: self.lineColor, strokeSize: self.strokeSize))
        self.lastPoint = newPoint
        self.setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect){
        let context = UIGraphicsGetCurrentContext()
        context?.setLineCap(CGLineCap.round)
     
        for line in self.lines {
            context?.setLineWidth(CGFloat(line.strokeSize))
            context?.beginPath()
            context?.move(to:line.startPoint)
            context?.addLine(to: line.endPoint)
            context?.setStrokeColor(line.strokeColor)
            context?.strokePath()
        }
    }

    
}
