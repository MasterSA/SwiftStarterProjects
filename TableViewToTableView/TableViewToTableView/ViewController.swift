//
//  ViewController.swift
//  TableViewToTableView
//
//  Created by Azizur Rahman on 2018-01-29.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let countryVC = CountryViewController()
    
    var continentData = ["North Amarica", "South Amarica"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.continentData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ContinentCell", for: indexPath)
        cell.textLabel?.text = self.continentData[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        countryVC.costumInit(title: self.continentData[indexPath.row])
        self.navigationController?.pushViewController(countryVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

