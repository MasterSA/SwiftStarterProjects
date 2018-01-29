//
//  DesighnableView.swift
//  DesignApp
//
//  Created by Azizur Rahman on 2018-01-03.
//  Copyright © 2018 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class DesighnableView: UIView {

    @IBInspectable var cornerRadius : CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
            
            
        }
    }
    
}
