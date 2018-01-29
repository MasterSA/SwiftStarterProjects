//
//  DrawLine.swift
//  ConstraintsTest
//
//  Created by Azizur Rahman on 2017-12-05.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import Foundation
import UIKit

class DrawLine: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw( _ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(3.0)
        context!.setStrokeColor(UIColor.purple.cgColor)
        
        //make and invisible path first then we fill it in
        context!.move(to: CGPoint(x: rect.minX, y:rect.minY))
        context!.addLine(to: CGPoint(x: rect.maxX, y:rect.maxY))
        
        context!.move(to: CGPoint(x: rect.maxX, y:rect.minY))
        context!.addLine(to: CGPoint(x: rect.minX, y:rect.maxY))
        
        context!.move(to: CGPoint(x: rect.midX, y:rect.minY))
        context!.addLine(to: CGPoint(x: rect.midX, y:rect.maxY))
        
        context!.strokePath()
    }
}
