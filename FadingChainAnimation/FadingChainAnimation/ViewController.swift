//
//  ViewController.swift
//  FadingChainAnimation
//
//  Created by Azizur Rahman on 2018-01-20.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bgImage: UIImageView!
    @IBOutlet var tasteTitle: UILabel!
    @IBOutlet var desc: UILabel!
    @IBOutlet var startButton: RoundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startButton.layer.cornerRadius = startButton.frame.size.height / 2
        startButton.borderColor = UIColor.white.cgColor
        bgImage.alpha = 0
        tasteTitle.alpha = 0
        desc.alpha = 0
        startButton.alpha = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.bgImage.alpha = 1
            
        }) { (true) in
            self.showTitle()
            
        }
        
    }
    
    func showTitle() {
        UIView.animate(withDuration: 1, animations: {
            self.tasteTitle.alpha = 1
        }) { (true) in
            self.showDesc()
        }
    }
    
    func showDesc() {
        UIView.animate(withDuration: 1, animations: {
            self.desc.alpha = 1
        }) { (true) in
            self.showButton()
        }
        
    }
    
    func showButton() {
        UIView.animate(withDuration: 1, animations: {
            self.startButton.alpha = 1
        }, completion: nil)
        
    }

}

