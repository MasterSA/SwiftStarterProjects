//
//  DesignableButton.swift
//  drawapptwo
//
//  Created by Azizur Rahman on 2018-01-02.
//  Copyright © 2018 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: BounceButton {
    
    
    @IBInspectable var borderWidth : CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = self.borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = self.borderColor.cgColor
            
        }
    }
    
    
    override func draw(_ rect: CGRect) {
       self.layer.cornerRadius = self.frame.height / 2
        
    }
    
}
