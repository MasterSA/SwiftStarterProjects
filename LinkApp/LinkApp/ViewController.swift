//
//  ViewController.swift
//  LinkApp
//
//  Created by Azizur Rahman on 2018-04-05.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func linkSupport(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://bidween.com/support")! as URL, options: [:], completionHandler: nil)
        
    }
}

