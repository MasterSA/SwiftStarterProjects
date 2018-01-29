//
//  Line.swift
//  DrawApp
//
//  Created by Azizur Rahman on 2017-12-05.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//


import UIKit

class Line {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    
    init(start _start: CGPoint, end _end: CGPoint, color _color: UIColor!) {
        //init(start _start: CGPoint, end _end: CGPoint) {
        start = _start
        end = _end
        color = _color
    }
}
