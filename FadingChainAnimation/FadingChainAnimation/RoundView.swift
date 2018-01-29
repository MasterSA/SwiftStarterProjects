//
//  RoundView.swift
//  FadingChainAnimation
//
//  Created by Azizur Rahman on 2018-01-22.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

@IBDesignable class RoundView: UIView {
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
            
        }
        
    }
    
    @IBInspectable var borderColor : CGColor = UIColor.black.cgColor {
        didSet {
            self.layer.borderColor = self.borderColor
            
        }
        
    }
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
            
        }
        
    }
    

}
