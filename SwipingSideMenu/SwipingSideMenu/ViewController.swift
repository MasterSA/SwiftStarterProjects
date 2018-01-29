//
//  ViewController.swift
//  SwipingSideMenu
//
//  Created by Azizur Rahman on 2018-01-06.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet var companyTable: UITableView!
    @IBOutlet var slideConstraint: NSLayoutConstraint!
    @IBOutlet var visualView: UIVisualEffectView!
    @IBOutlet var slideView: UIView!
    
    let companyName = ["BinCloud", "BigDo", "letscodes", "Amazon","Apple", "Google","Facebook","Twitter","Microsoft", "Linkedin","Alphabet"]
    
    let funny = [22.44, 44.44,55.55, 55.34, 22.44, 44.44,55.55, 55.34,22.44, 44.44,55.55]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visualView.layer.cornerRadius = 15
        slideView.layer.shadowColor = UIColor.black.cgColor
        slideView.layer.shadowOpacity = 1
        slideView.layer.shadowOffset = CGSize(width: 5, height: 0)
        slideConstraint.constant = -750
        companyTable.delegate = self
        companyTable.dataSource = self
        
    }
    
    @IBAction func swiped(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            let translation = sender.translation(in: self.view).x
            
            if translation > 0 {
                
                if self.slideConstraint.constant < 10 {
                    UIView.animate(withDuration: 0.3, animations: {
                        self.slideConstraint.constant = 20
                        self.view.layoutIfNeeded()
                    
                    })
                    
                }
                
            } else { // swipe left
                if self.slideConstraint.constant > -750 {
                    UIView.animate(withDuration: 0.3, animations: {
                        self.slideConstraint.constant = -750
                        self.view.layoutIfNeeded()
                        
                    })
                    
                }
                
            }
            
        } else if sender.state == .ended {
            
            if slideConstraint.constant < -300 {
                UIView.animate(withDuration: 0.3, animations: {
                    self.slideConstraint.constant = -750
                    self.view.layoutIfNeeded()
                    
                })
                
            } else {
                UIView.animate(withDuration: 0.3, animations: {
                    self.slideConstraint.constant = 0
                    self.view.layoutIfNeeded()
                    
                })

            }
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = companyName[indexPath.row]
        cell?.detailTextLabel?.text = " \(funny[indexPath.row]) "
        return cell!
    }
    
    
}
