//
//  ViewController.swift
//  PyshingMenu
//
//  Created by Azizur Rahman on 2018-01-26.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
    
    @IBOutlet var menuView: UIView!
    @IBOutlet var slideConstraint: NSLayoutConstraint!
    var isOpen = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a
        menuView.layer.shadowColor = UIColor.clear.cgColor
        menuView.layer.shadowOpacity = 0
        menuView.layer.shadowOffset = CGSize(width: 0, height: 0)
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(showHome), name: NSNotification.Name("ShowHome"), object: nil)
  
    }
    
   
    @objc func toggleSideMenu() {
        if self.isOpen {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
                self.slideConstraint.constant = -224
                self.view.layoutIfNeeded()
            }, completion: nil)
            menuView.layer.shadowColor = UIColor.clear.cgColor
            menuView.layer.shadowOpacity = 0
            menuView.layer.shadowOffset = CGSize(width: 0, height: 0)
            self.isOpen = false
            
        } else {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.slideConstraint.constant = 0
                self.view.layoutIfNeeded()
            }, completion: nil)
            menuView.layer.shadowColor = UIColor.black.cgColor
            menuView.layer.shadowOpacity = 1
            menuView.layer.shadowOffset = CGSize(width: 6, height: 0)
            self.isOpen = true
            
        }
    }
    
}
