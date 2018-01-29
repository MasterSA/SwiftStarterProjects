//
//  MyLine.swift
//  test
//
//  Created by Azizur Rahman on 2017-12-25.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import Foundation
import UIKit

class MyLineView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw( _ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        context!.setLineWidth(13.0)
        context!.setStrokeColor(UIColor.purple.cgColor)

        //make and invisible path first then we fill it in
        context!.move(to: CGPoint(x: 10, y: 10))
        context!.addLine(to: CGPoint(x: 300, y:300))
        
        context!.strokePath()
    }
}
