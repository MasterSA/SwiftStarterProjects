//
//  CountryViewController.swift
//  TableViewToTableView
//
//  Created by Azizur Rahman on 2018-01-29.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!

    
    var countryData = ["Canada", "America", "Mexico"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        let nib = UINib(nibName: "CountryCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "countryCell")
    }
    
    func costumInit(title: String) {
        self.title = title
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.countryData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        cell.textLabel?.text = self.countryData[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let provinceVC = ProvinceViewController()
        provinceVC.costumInit(title: countryData[indexPath.row])
        self.navigationController?.pushViewController(provinceVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
