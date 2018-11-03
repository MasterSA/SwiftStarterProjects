//
//  ProvinceViewController.swift
//  TableViewToTableView
//
//  Created by Azizur Rahman on 2018-01-29.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class ProvinceViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var provinceTableView: UITableView!
    
    var provinces = ["British Columbia", "Alberta", "Saskachewn","Manitoba","Ontario","Quebéc","New Foundland and Labrador","Prince Edward Island","Nova Scotia","New Brunswick","Northwest tritories","Yukon","Nunavat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.provinceTableView.delegate = self
        self.provinceTableView.dataSource = self
        
        let nib = UINib(nibName: "ProvinceTableViewCell", bundle: nil)
        provinceTableView.register(nib, forCellReuseIdentifier: "provinceCell")
    }
    
    func costumInit(title: String) {
        self.title = title
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.provinces.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "provinceCell", for: indexPath)
        cell.textLabel?.text = self.provinces[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
