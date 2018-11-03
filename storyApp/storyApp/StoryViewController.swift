//
//  StoryViewController.swift
//  storyApp
//
//  Created by Azizur Rahman on 2018-02-05.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Restart", style: .plain, target: self, action: #selector(startOver))
    }
    
    @objc func startOver() {
        if let navigationController = self.navigationController {
            navigationController.popToRootViewController(animated: true)
        }
    }
    
}
