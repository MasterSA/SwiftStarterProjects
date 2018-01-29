//
//  ViewController.swift
//  test
//
//  Created by Azizur Rahman on 2017-12-25.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var circularView = MyCircleView()
    let frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        circularView.draw(frame)
        
//        let swiftColor = UIColor(red: 1, green: 11, blue: 0, alpha: 1)
//        circularView.backgroundColor = swiftColor
       // self.view.addSubview(circularView)
        
        // let lineFrame = CGRect(x:0, y:0, width: self.view.frame.width, height: self.view.frame.height)
//       var myline = MyLineView()
//        myline.draw(lineFrame)
//
//        self.view.addSubview(myline)
        
     //   let draw = MyLineView(frame: self.view.bounds)
        let lineFrame = CGRect(x:10, y:10, width: 300, height: 300)

          let draw = MyLineView(frame: lineFrame)
        view.addSubview(draw)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

