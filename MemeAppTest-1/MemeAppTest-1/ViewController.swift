//
//  ViewController.swift
//  MemeAppTest-1
//
//  Created by Azizur Rahman on 2018-02-05.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let alertController = UIAlertController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.alertController.title = "The app is working!!"
        self.alertController.message = "woo hoo!!!"
        
    }

    @IBAction func showAlertView(sender: UIButton!) {
        
        let okButton = UIAlertAction(title: "Go away!", style: .default) { action in
            self.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(okButton)
        UIView.animate(withDuration: 0.2) {
            self.present(self.alertController, animated: true, completion: nil)
        }
        
    }
    
}
