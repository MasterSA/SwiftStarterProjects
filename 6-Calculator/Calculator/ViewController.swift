//
//  ViewController.swift
//  Calculator
//
//  Created by Azizur Rahman on 2017-12-02.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var input1: UITextField!
    @IBOutlet var input2: UITextField!
    @IBOutlet var output: UILabel!
    var calculater: Calculater = Calculater()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func add() {
        
        let input1 = self.input1.text
        let input2 = self.input2.text
        
        
        if let number1 = Float(input1!), let number2 = Float(input2!) {
            let answer = calculater.add(number1: number1, number2: number2)
            
            self.output.text = "\(answer)"
            
        } else {
            
            self.output.text = "Please enter a number, not text!"
            
        }
        
    }
    
    @IBAction func subtract() {
        
        let input1 = self.input1.text
        let input2 = self.input2.text
        
        
        if let number1 = Float(input1!), let number2 = Float(input2!) {
            let answer = calculater.subtract(number1: number1, number2: number2)
            
            self.output.text = "\(answer)"
            
        } else {
            
            self.output.text = "Please enter a number, not text!"
            
        }
        
    }
    
    @IBAction func multiply() {
        
        let input1 = self.input1.text
        let input2 = self.input2.text
        
        
        if let number1 = Float(input1!), let number2 = Float(input2!) {
            let answer = calculater.multiply(number1: number1, number2: number2)
            
            self.output.text = "\(answer)"
            
        } else {
            
            self.output.text = "Please enter a number, not text!"
            
        }
        
    }
    
    @IBAction func divide() {
        
        let input1 = self.input1.text
        let input2 = self.input2.text
        
        
        if let number1 = Float(input1!), let number2 = Float(input2!) {
            let answer = calculater.divide(number1: number1, number2: number2)
            
            self.output.text = "\(answer)"
            
        } else {
            
            self.output.text = "Please enter a number, not text!"
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

