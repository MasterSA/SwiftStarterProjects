//
//  CircleView.swift
//  BidWeenApp
//
//  Created by Azizur Rahman on 2018-01-22.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import Foundation
import UIKit

class CircleView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: .zero)
        let radious : Double = 100
        
        let center = CGPoint(x: rect.width/2, y: rect.height/2)
        path.move(to: CGPoint(x: center.x + CGFloat(radious), y: center.y ))
        
        for i in stride(from: 0, to: 361.0, by: 10){
            
            let radians = i * (Double.pi / 180)
            
            let x = Double(center.x) + radious * cos(radians)
            let y = Double(center.y) + radious * sin(radians)
            path.addLine(to: CGPoint(x: x, y : y))
        }
        
        
        //  path.stroke(with: .color, alpha: 1.0)
        path.stroke()
        
        //        let center = CGPoint(x: self.frame.size.width / 2.0, y: self.frame.size.height / 2.0);
        //
        //        guard let ctx = UIGraphicsGetCurrentContext() else { return }
        //        ctx.beginPath()
        //
        //
        //        //6
        //        ctx.setLineWidth(2)
        //
        //        let x:CGFloat = center.x
        //        let y:CGFloat = center.y
        //        let radius: CGFloat = 100.0
        //        let endAngle: CGFloat = CGFloat(2 * Double.pi)
        //
        //        ctx.addArc(center: CGPoint(x: x,y: y), radius: radius, startAngle: 0, endAngle: endAngle, clockwise: true)
        //
        //        ctx.strokePath()
        
        
    }
}
