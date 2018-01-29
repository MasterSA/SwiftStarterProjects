//
//  Line.swift
//  drawapptwo
//
//  Created by Azizur Rahman on 2017-12-26.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class Line {
    var startPoint : CGPoint!
    var endPoint : CGPoint!
    var strokeColor : CGColor!
    var strokeSize : Float = Float()
    
    
    init(startPoint : CGPoint, endPoint : CGPoint, strokeColor : CGColor, strokeSize: Float){
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.strokeColor = strokeColor
        self.strokeSize = strokeSize
        
    }
}
