//
//  DesignableButton.swift
//  DesignApp
//
//  Created by Azizur Rahman on 2017-12-26.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: BounceButton {

    @IBInspectable var borderWidth : CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
    
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
            
        }
    }
    
    
}
