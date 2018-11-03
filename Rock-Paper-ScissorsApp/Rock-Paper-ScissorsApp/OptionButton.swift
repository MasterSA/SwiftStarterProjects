//
//  OptionButton.swift
//  Rock-Paper-ScissorsApp
//
//  Created by Azizur Rahman on 2018-02-06.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

@IBDesignable class OptionButton: UIButton {
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }
    

}
