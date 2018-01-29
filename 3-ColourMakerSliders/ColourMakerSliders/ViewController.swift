//
//  ViewController.swift
//  ColourMakerSliders
//
//  Created by Azizur Rahman on 2017-11-11.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueSlider: UISlider!
    
    
    @IBOutlet var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func generateColor(_ sender: UISlider) {
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
    }
    

}

