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
    
    @IBInspectable var borderColor : UIColor = UIColor.black {
        didSet {
            self.layer.borderColor = self.borderColor.cgColor
            
        }
        
    }
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
            
        }
        
    }
    

}
