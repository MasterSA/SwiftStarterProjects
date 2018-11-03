//
//  ViewController.swift
//  LiveMoneyConverter
//
//  Created by Azizur Rahman on 2018-01-30.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var rateField: UITextField!
    @IBOutlet weak var convrsionTableView: UITableView!
    var usd: Currency?
    var baseRate = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.fetchData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let currenyFetched = usd {
            return currenyFetched.rates.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        
        if let currencyFetched = usd {
            cell.textLabel?.text = Array(currencyFetched.rates.keys)[indexPath.row]
            let selectedRate = self.baseRate * Double(Array(currencyFetched.rates.values)[indexPath.row])
            cell.textLabel?.text = "\(selectedRate)"
            return cell
        }
        return UITableViewCell()
    }

    @IBAction func converterPressed() {
        if let iGetString = self.rateField.text {
            if let isDouble = Double(iGetString) {
                self.baseRate = isDouble
                self.fetchData()
            }
        }
    }
    
    func fetchData() {
        let url = URL(string: "http://api.fixer.io/latest?base=USD")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil{
                do {
                    self.usd = try JSONDecoder().decode(Currency.self, from: data!)
                } catch {
                    print("Soothe Error")
                }
                DispatchQueue.main.async {
                    self.convrsionTableView.reloadData()
                }
            } else {
                print("User made Error")
            }
        }.resume()
    }
    
  
}

