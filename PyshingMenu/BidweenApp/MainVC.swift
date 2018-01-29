//
//  MainVC.swift
//  PyshingMenu
//
//  Created by Azizur Rahman on 2018-01-27.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBAction func barTapped(sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
    }
    
    @objc func showHome() {
     //   self.performSegue(withIdentifier: "go-to-home", sender: nil)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
    }
    
    
    @objc func showAccount() {
        self.performSegue(withIdentifier: "go-to-account", sender: nil)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
    }
    
    @objc func showAbout() {
        self.performSegue(withIdentifier: "go-to-about", sender: nil)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(showAbout), name: NSNotification.Name("ShowAbout"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showAccount), name: NSNotification.Name("ShowAccount"), object: nil)
        
    }
    
   
    
}
