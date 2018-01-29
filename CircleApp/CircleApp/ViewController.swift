//
//  ViewController.swift
//  CircleApp
//
//  Created by Azizur Rahman on 2018-01-23.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var outerCircleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.outerCircleView.layer.cornerRadius = self.outerCircleView.frame.size.width / 2
        self.outerCircleView.layer.borderColor = UIColor.white.cgColor
        self.outerCircleView.layer.borderWidth = 1
        
        print(self.view.frame.midX)
        print(self.view.frame.midY)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

