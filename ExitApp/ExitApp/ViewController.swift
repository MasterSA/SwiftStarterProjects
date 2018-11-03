//
//  ViewController.swift
//  ExitApp
//
//  Created by Azizur Rahman on 2018-04-15.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func exit(_ sender: Any) {
       UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
    }
    
    
}

