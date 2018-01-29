//
//  ViewController.swift
//  GreetingCreator
//
//  Created by Azizur Rahman on 2017-12-03.
//  Copyright © 2017 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet var greetingWord: UITextField!
    @IBOutlet var nameOfPerson: UITextField!
    @IBOutlet var punctuation: UITextField!
    
    @IBOutlet var wholeGreeting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func createGreeting() {
        
        let word = self.greetingWord.text
        let person = self.nameOfPerson.text
        let punctuation = self.punctuation.text
        
        if let greeting = word, let name = person, let punc = punctuation{
            self.wholeGreeting.text = "Your greeting is: \(greeting) \(name)\(punc)"
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

