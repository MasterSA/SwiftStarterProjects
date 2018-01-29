//
//  LoginVC.swift
//  DesignApp
//
//  Created by Azizur Rahman on 2018-01-03.
//  Copyright © 2018 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func dismissVC(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func `continue`(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
