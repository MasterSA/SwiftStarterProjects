//
//  DesighnableView.swift
//  drawapptwo
//
//  Created by Azizur Rahman on 2018-01-02.
//  Copyright © 2018 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

@IBDesignable class DesighnableView: UIView {

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
