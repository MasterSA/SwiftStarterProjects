//
//  MyCircularView.swift
//  test
//
//  Created by Azizur Rahman on 2017-12-25.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import Foundation
import UIKit

class MyCircleView: UIView {
    
    override func draw(_ rect: CGRect) {
        let ovalBounds = self.bounds.insetBy(dx: 10, dy: 10)
        let oval = UIBezierPath(ovalIn: ovalBounds)
        let brightRed = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        brightRed.setFill()
        oval.fill()
    }
}
