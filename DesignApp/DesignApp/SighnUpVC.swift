//
//  SighnUpVC.swift
//  DesignApp
//
//  Created by Azizur Rahman on 2018-01-03.
//  Copyright © 2018 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class SighnUpVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func dissmissVC(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func continueSighnUp(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
