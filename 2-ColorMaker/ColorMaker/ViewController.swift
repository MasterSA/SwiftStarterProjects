//
//  ViewController.swift
//  ColorMaker
//
//  Created by Azizur Rahman on 2017-11-05.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redControl: UISwitch!
    @IBOutlet weak var greenControl: UISwitch!
    @IBOutlet weak var blueControl: UISwitch!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set colorView on launch
        changeColorComponent()
    }
    
    // MARK: Actions
    
    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        
        let r: CGFloat = self.redControl.isOn ? 1 : 0
        let g: CGFloat = self.greenControl.isOn ? 1 : 0
        let b: CGFloat = self.blueControl.isOn ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}
