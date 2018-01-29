//
//  ViewController.swift
//  drawapptwo
//
//  Created by Azizur Rahman on 2017-12-26.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var sizeSlider: UISlider!
    @IBOutlet var sizeLabel: UILabel!
    @IBOutlet var widthSlideConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundButtton: UIButton!
    @IBOutlet var slideConstraint: NSLayoutConstraint!
    @IBOutlet var drawView: DesighnableDrawView!
    @IBOutlet var brushButton: UIButton!
    @IBOutlet var clearButton: UIButton!
    @IBOutlet var colorButton: UIButton!
    @IBOutlet var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.colorView.layer.cornerRadius = 10
        self.colorView.layer.masksToBounds = true
        self.backgroundButtton.alpha = 0
        self.slideConstraint.constant = -675
        self.widthSlideConstraint.constant = -675
        
    }
    
    @IBAction func showPopup() {
        self.slideConstraint.constant = 0
        
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {  self.view.layoutIfNeeded() }
            , completion: nil)
        
        UIView.animate(withDuration: 0.2, animations: {
            self.backgroundButtton.alpha = 0.5
            
        })
        
    }
    
    @IBAction func closePopup() {
        self.slideConstraint.constant = -675
        
        UIView.animate(withDuration: 0.1, animations: {
            self.view.layoutIfNeeded()
            self.backgroundButtton.alpha = 0
            
        })
    }

    @IBAction func clearEditor(_ sender: Any) {
        drawView.lines = []
        drawView.setNeedsDisplay()
        
    }
    
    @IBAction func changeToBlackLines() {
        drawView.lineColor = UIColor.black.cgColor
        
    }
    
    @IBAction func changeToYellowLines() {
        drawView.lineColor = UIColor.yellow.cgColor
        
    }
    
    @IBAction func changeToRedLines() {
        drawView.lineColor = UIColor.red.cgColor
        
    }
    
    @IBAction func changeToBlueLines() {
        drawView.lineColor = UIColor.blue.cgColor
        
    }
    
    @IBAction func changeToOrangeLines() {
        drawView.lineColor = UIColor.orange.cgColor
        
    }
    
    @IBAction func changeToGreenLines() {
        drawView.lineColor = UIColor.green.cgColor
        
    }
    
    @IBAction func changeToGrayLines() {
        drawView.lineColor = UIColor.gray.cgColor
        
    }
    
    @IBAction func changeToPinkLines() {
        drawView.lineColor = UIColor.magenta.cgColor
        
    }
    
    @IBAction func changeToBrownLines() {
        drawView.lineColor = UIColor.brown.cgColor
        
    }
    
    @IBAction func changeToTorqouisLines() {
        drawView.lineColor = UIColor.init(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0).cgColor
        
    }
    
    @IBAction func brush() {
        drawView.lineColor = UIColor.white.cgColor
        
    }
    
    @IBAction func showWidthPopup() {
        self.widthSlideConstraint.constant = 0
        
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {  self.view.layoutIfNeeded() }
            , completion: nil)
        
        UIView.animate(withDuration: 0.2, animations: {
            self.backgroundButtton.alpha = 0.5
            
        })
        
    }
    
    @IBAction func changeWidth() {
        self.sizeSlider.value = roundf(self.sizeSlider.value)
        self.sizeLabel.text = "\(self.sizeSlider.value.cleanValue)"
        self.drawView.strokeSize = sizeSlider.value
        
    }
    
    
    @IBAction func closeWidthPopup() {
        self.widthSlideConstraint.constant = -675
        
        UIView.animate(withDuration: 0.1, animations: {
            self.view.layoutIfNeeded()
            self.backgroundButtton.alpha = 0
            
        })
    }
}

