//
//  ViewController.swift
//  MaterialDesignApp
//
//  Created by Azizur Rahman on 2018-01-02.
//  Copyright © 2018 BinCloud Solutions Inc. All rights reserved.
//

import UIKit

import MaterialComponents.MaterialButtons

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    let raiseButton = MDCRaisedButton.init();
    raiseButton.setTitle("Raised Button", forState: .Normal);
    raiseButton.sizeToFit();
    raiseButton.addTarget(self, action: "tapped:", forControlEvents: .TouchUpInside);
    self.view.addSubview(raiseButton);
}

func tapped(sender: UIButton!){
    NSLog("Button was tapped!");
}

}
    


