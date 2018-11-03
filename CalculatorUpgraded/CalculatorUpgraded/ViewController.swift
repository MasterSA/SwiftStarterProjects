//
//  ViewController.swift
//  CalculatorUpgraded
//
//  Created by Azizur Rahman on 2017-12-19.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textDisplay: UILabel!
    var number1:Float = 0.0
    var number2:Float = 0.0
    var arithmeticOperator = ""
    var calculator = Calculator()
    var doesHavePoint = false
    var thisIsAnAnswer = false
    var numberIsNegitive = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.doesHavePoint = false
        
    }
    
    @IBAction func clear() {
        self.textDisplay.text = "0"
        self.number1 = 0.0
        self.number2 = 0.0
        self.arithmeticOperator = ""
        self.doesHavePoint = false
        
    }
    
    @IBAction func button0Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true {
            textDisplay.text = "0"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")0"
            
        }
        
    }
    
    @IBAction func button1Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true  {
            textDisplay.text = "1"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")1"
            
        }
        
    }
    
    @IBAction func button2Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true  {
            textDisplay.text = "2"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")2"
            
        }
        
    }
    
    @IBAction func button3Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true  {
            textDisplay.text = "3"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")3"
            
        }
        
    }
    
    @IBAction func button4Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true  {
            textDisplay.text = "4"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")4"
            
        }
        
    }
    
    @IBAction func button5Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true  {
            textDisplay.text = "5"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")5"
            
        }
        
    }
    
    @IBAction func button6Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true  {
            textDisplay.text = "6"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")6"
            
        }
        
    }
    
    @IBAction func button7Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true {
            textDisplay.text = "7"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")7"
            
        }
        
    }
    
    @IBAction func button8Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true  {
            textDisplay.text = "8"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")8"
            
        }
        
    }
    
    @IBAction func button9Pressed() {
        if textDisplay.text == "0" || thisIsAnAnswer == true {
            textDisplay.text = "9"
            self.thisIsAnAnswer = false
            
        } else {
            textDisplay.text = "\(textDisplay.text ?? "")9"
            
        }
        
    }
    
    @IBAction func buttonDecimalPointPressed() {
        if thisIsAnAnswer == false {
            if self.doesHavePoint == false {
               self.textDisplay.text = "\(textDisplay.text ?? "0")."
               self.doesHavePoint = true
                
            }
        }
    }
    
    @IBAction func add() {
        self.arithmeticOperator = "+"
        let number = textDisplay.text
        self.doesHavePoint = false
        self.thisIsAnAnswer = false
        
        if let num = Float(number!) {
            self.numbers.append(num)
            textDisplay.text = "0"
            
        } else {
            textDisplay.text = "0"
            
        }
        
    }
    
    @IBAction func subtract() {
        self.arithmeticOperator = "-"
        let number = textDisplay.text
        self.doesHavePoint = false
        self.thisIsAnAnswer = false
        
        if let num = Float(number!) {
            self.numbers.append(num)
            textDisplay.text = "0"
            
        } else {
            textDisplay.text = "0"
            
        }
        
    }
    
    @IBAction func multiply() {
        self.arithmeticOperator = "*"
        let number = textDisplay.text
        self.doesHavePoint = false
        self.thisIsAnAnswer = false
        
        if let num = Float(number!) {
            self.numbers.append(num)
            textDisplay.text = "0"
            
        } else {
            textDisplay.text = "0"
            
        }
        
    }
    
    @IBAction func divide() {
        self.arithmeticOperator = "/"
        let number = textDisplay.text
        self.doesHavePoint = false
        self.thisIsAnAnswer = false
        
        if let num = Float(number!) {
            self.numbers.append(num)
            textDisplay.text = "0"
            
        } else {
            textDisplay.text = "0"
            
        }
        
    }
    
    @IBAction func equalsTo(_ sender: UIButton, forEvent event: UIEvent) {
        let number = textDisplay.text
        
            if let num = Float(number!) {
                self.numbers.append(num)
                let answer = self.calculator.doNormalOperation(numbersToAdd: numbers, operatorType: arithmeticOperator)
                self.textDisplay.text = "\(answer.cleanValue)"
                self.thisIsAnAnswer = true
                self.numbers = []
        }
            
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

