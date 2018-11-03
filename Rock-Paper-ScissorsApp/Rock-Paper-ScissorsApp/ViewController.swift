//
//  ViewController.swift
//  Rock-Paper-ScissorsApp
//
//  Created by Azizur Rahman on 2018-02-06.
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

    @IBAction func RockPressed(_ sender: Any) {
        
        var resultController = ResultViewController()
        resultController = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        resultController.playerChoice = 1
        
        present(resultController, animated: true, completion: nil)
        
    }
    
}

