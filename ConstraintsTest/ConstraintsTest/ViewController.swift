//
//  ViewController.swift
//  ConstraintsTest
//
//  Created by Azizur Rahman on 2017-12-05.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var drawLine = DrawLine()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        drawLine = DrawLine(frame: CGRect(x : self.view.frame.minX, y : self.view.frame.minY, width: self.view.frame.width, height: self.view.frame.height))

        
        self.view.addSubview(drawLine)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

