//
//  ViewController.swift
//  ShowEvenOrOdd
//
//  Created by Azizur Rahman on 2017-12-09.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var theArray: UITextField!
    var showTheEvensOrOdds = ShowEvenOrOdd()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showEvens() {
        let number = self.theArray.text
      
        
        if let numberOfElements = (Int)(number!) {
              var arrayOfNumber = [Int]()
            for i in 0..<numberOfElements {
                arrayOfNumber.append(i+1)
            }
            print(arrayOfNumber)
          let evens =  showTheEvensOrOdds.showEvens(numbers: arrayOfNumber)
            theArray.text = "The even numbers up to \(numberOfElements) are \(evens)"
            
        }
        
    }
    
    @IBAction func showOdds() {
        let number = self.theArray.text
        
        
        if let numberOfElements = (Int)(number!) {
            var arrayOfNumber = [Int]()
            for i in 0..<numberOfElements {
                arrayOfNumber.append(i+1)
            }
            print(arrayOfNumber)
            let odds =  showTheEvensOrOdds.showOdds(numbers: arrayOfNumber)
            theArray.text = "The odd numbers up to \(numberOfElements) are \(odds)"
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

