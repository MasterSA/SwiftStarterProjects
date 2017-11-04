//
//  ViewController.swift
//  NumberChange
//
//  Created by Aariz Rahman on 2017-11-04.
//  Copyright © 2017 Letscodes Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    @IBOutlet var numberLbl: UILabel!
    @IBOutlet var increase: UIButton!
    @IBOutlet var decrease: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func increaseAction(_ sender: UIButton) {
        self.count += 1
        self.numberLbl.text = "\(self.count)"
        
    }
    
    @IBAction func decreaseAction(_ sender: UIButton, forEvent event: UIEvent) {
        self.count -= 1
        self.numberLbl.text = "\(self.count)"
        
    }
    
}

