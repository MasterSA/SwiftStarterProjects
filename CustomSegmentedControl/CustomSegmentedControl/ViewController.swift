//
//  ViewController.swift
//  CustomSegmentedControl
//
//  Created by Azizur Rahman on 2018-02-03.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    var width :  CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        width = self.view.frame.width
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentedValueChanged(_ sender: CustomSegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            UIView.animate(withDuration: 0.3, animations: {
                
            })
            break
        case 1:
            UIView.animate(withDuration: 0.3, animations: {
                
            })
            break
        case 2:
            UIView.animate(withDuration: 0.3, animations: {
                
            })
            break

            
        default:
            break
        }
    }
    
}

