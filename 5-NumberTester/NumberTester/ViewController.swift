//
//  ViewController.swift
//  NumberTester
//
//  Created by Azizur Rahman on 2017-11-29.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var max = Int.max
    
    @IBOutlet var textNumber: UITextField!
    @IBOutlet var labelAnswer: UILabel!
    var numberTester: NumberTester = NumberTester()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonEvenOrOdd() {
        
        let input = textNumber.text
        
        if let number = Int(input!) {
            if  numberTester.isEvenOrOdd(number: number) {
            
                labelAnswer.text = "\(number) is even number"
            } else {
                
                labelAnswer.text = "\(number) is odd number"
            
            }
            
        } else {
            
            labelAnswer.text = "please enter a number and make it less than \(max)"
            
        }
        
    }
    
    @IBAction func buttonDivisibleBy5() {
        
        let input = textNumber.text
        
        if let number = Int(input!) {
            if numberTester.divisibleBy5(number: number) {
                
                labelAnswer.text = "\(number) is divisible by 5"
            } else {
                
                labelAnswer.text = "\(number) is not divisible by 5"
            }
        } else {
            
            labelAnswer.text = "the number you entered is not valid number"
            
        }
        
    }
    
    @IBAction func squared() {
        
        let input = textNumber.text
        
        if let number = Int(input!) {
            
            let squaredNumber = number * number
            
            labelAnswer.text = "\(number) squared is \(squaredNumber)"
        
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

