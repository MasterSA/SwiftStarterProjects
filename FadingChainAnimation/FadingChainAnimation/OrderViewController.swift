//
//  OrderViewController.swift
//  FadingChainAnimation
//
//  Created by Azizur Rahman on 2018-01-22.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet var menuView: UIView!
    @IBOutlet var darkFillView: RoundView!
    @IBOutlet var toggleButton: UIButton!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func toggleMenu(_ sender: Any) {
        
        if darkFillView.transform == CGAffineTransform.identity {
            UIView.animate(withDuration: 1, animations: {
                self.darkFillView.transform = CGAffineTransform(scaleX: 15, y: 11)
                self.menuView.transform = CGAffineTransform(translationX: 0, y: -49)
                self.toggleButton.transform = CGAffineTransform(rotationAngle: self.radians(180))
            }) { (true) in
                self.label.textColor = UIColor.white
            
            }
           
        } else {
            UIView.animate(withDuration: 1, animations: {
                self.menuView.transform = .identity
                self.darkFillView.transform = .identity
                  self.toggleButton.transform = .identity
            }) { (true) in
                self.label.textColor = UIColor.clear
                
            }
            
        }
    }
    
    func radians(_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / degrees)
    }
    
}
