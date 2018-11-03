//
//  ResultViewController.swift
//  Rock-Paper-ScissorsApp
//
//  Created by Azizur Rahman on 2018-02-06.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    var opponentChoice = Int()
    var playerChoice = Int()
    
    enum Shape {
        case "Rock"
        
        case ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        opponentChoice = getOppenentChoice()
        resultLabel.text = "\(compareChoices(playerChoice: self.playerChoice, opponentChoice: self.opponentChoice))"
    }
    
    func getOppenentChoice() ->  {
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomChoice = Int(arc4random_uniform(3))
        return sh
    }
    
    func compareChoices(playerChoice: Int, opponentChoice: Int) -> String {
        if playerChoice > opponentChoice {
            return "You Won!"
        } else if playerChoice == opponentChoice {
            return "You got a Tie!"
        } else if playerChoice == 1 && opponentChoice == 3 {
            return "You Won!"
            
        } else {
            return "You lose!"
            
        }
    }
    
    @IBAction func playAgain() {
        dismiss(animated: true, completion: nil)
        
    }
    
}
