//
//  ViewController.swift
//  CatchTheBall
//
//  Created by Azizur Rahman on 2018-01-18.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class CalendarAnimationViewController: UIViewController {
    
    var number = 1
    let container = UIView()
    let redView = UILabel()
    let blueView = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        self.container.backgroundColor = UIColor.clear
        
        self.redView.frame =  CGRect(x: 0, y: 0, width: 200, height: 200)
        self.redView.backgroundColor = UIColor.red
        
        self.blueView.frame = self.redView.frame
        self.blueView.backgroundColor = UIColor.blue
        
        self.container.addSubview(redView)
        
        self.view.addSubview(container)
        
    }
    
    @IBAction func animateButtonTapped(_ sender: UIButton) {
        
        
        var views: (frontView : UILabel, backView: UILabel)
//        let transitionOption = UIViewAnimationOptions.transitionCurlUp
        
        if self.redView.superview == container {
            views = (frontView : self.redView, backView : self.blueView)
            
        } else {
            views = (frontView : self.blueView, backView : self.redView)
            
        }
        
        UIView.transition(with: self.container, duration: 1.0, options: .transitionCurlUp
            , animations:{
                views.frontView.removeFromSuperview()
               
                views.backView.textColor = UIColor.green
                views.backView.textAlignment = NSTextAlignment.center
                views.backView.font = UIFont(name: "Futura", size : 55.0)
                views.backView.text = "\(self.number)"
                self.container.addSubview(views.backView)
                self.number += 1
                
        }, completion: nil)
        
        
    }
    
    

}

