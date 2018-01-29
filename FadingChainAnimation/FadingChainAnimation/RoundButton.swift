//
//  RoundButton.swift
//  FadingChainAnimation
//
//  Created by Azizur Rahman on 2018-01-20.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

@IBDesignable class RoundButton: UIButton {
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
            
        }
        
    }
    
    @IBInspectable var borderColor : CGColor = UIColor.black.cgColor {
        didSet {
            self.layer.borderColor = self.borderColor
            
        }
        
    }
    
}
