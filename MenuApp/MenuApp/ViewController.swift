//
//  ViewController.swift
//  MenuApp
//
//  Created by Azizur Rahman on 2018-01-02.
//  Copyright © 2018 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var menuView: UIView!
    @IBOutlet weak var backgroundButton: UIButton!
    @IBOutlet var slideInConstraint: NSLayoutConstraint!
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slideInConstraint.constant = -675
        menuShowing = false
        backgroundButton.alpha = 0
        self.menuView.layer.shadowOpacity = 1
        self.menuView.layer.shadowRadius = 6
        
    }
    
    @IBAction func showMenu(_ sender: UIBarButtonItem) {
        if menuShowing {
            slideInConstraint.constant = -675
            
            UIView.animate(withDuration: 0.2, animations: {
                self.view.layoutIfNeeded()
                self.backgroundButton.alpha = 0
                
            })
        } else {
            slideInConstraint.constant = 0
    
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
                self.backgroundButton.alpha = 0.5
                
            })
        }
        
        menuShowing = !menuShowing
    }
    
    @IBAction func backgroundClicked() {
        self.slideInConstraint.constant = -675
         menuShowing = false
        
        UIView.animate(withDuration: 0.2, animations: {
            self.view.layoutIfNeeded()
            self.backgroundButton.alpha = 0
            
        })
        
    }
    
}

