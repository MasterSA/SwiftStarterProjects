//
//  ViewController.swift
//  CalenderApp
//
//  Created by Aariz Rahman on 2018-11-01.
//  Copyright © 2018 BigDo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var dateLabel: UILabel!
    var data = DateCalender()
    let days = ["S","M" , "T", "W", "T", "F", "S"]
    let monthNames = ["Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"]
    var monthLengths : [Int] {
        if data.year % 4 == 0 {
            
            return [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        } else {
            
            return [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width / 7, height: collectionView.frame.size.height / 7)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 49
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dayCell", for: indexPath) as! DayCollectionViewCell
        cell.label.textAlignment = .center
        let row = 6
        let monthIndex = data.month - 1
        let beginningIndex = data.beginningDayOfMonth() + row
        if indexPath.row <= row {
            cell.label.textColor = .black
            cell.label.font = UIFont.boldSystemFont(ofSize: 20)
            cell.label.text = days[indexPath.row]
        } else if indexPath.row < beginningIndex {
            cell.label.textColor = .lightGray
            cell.label.font = UIFont.systemFont(ofSize: 20)
            if monthIndex == 0 {
                cell.label.text = String(monthLengths[11] - (((data.beginningDayOfMonth() + row) - indexPath.row) - 1))
                
            } else {
                cell.label.text = String(monthLengths[monthIndex - 1] - (((data.beginningDayOfMonth() + row) - indexPath.row) - 1))
                
            }
            
        } else if beginningIndex...(beginningIndex + monthLengths[monthIndex] - 1) ~= indexPath.row {
            cell.label.textColor  = .black
            cell.label.font = UIFont.systemFont(ofSize: 20)
            cell.label.text = "\((indexPath.row - beginningIndex) + 1)"
            
        } else {
            cell.label.textColor = .lightGray
            cell.label.font = UIFont.systemFont(ofSize: 20)
            cell.label.text = String(indexPath.row - (beginningIndex + monthLengths[monthIndex] - 1))
            
        }
        
        return cell
    }
    
    @IBAction func nextMonth(_ sender: UIButton) {
        if data.month == 12 {
            data.month = 1
            data.year += 1
            
        } else {
            data.month += 1
            
        }
        dateLabel.text = "\(monthNames[data.month - 1]), \(data.year)"
        collectionView.reloadData()
        
    }
    
    @IBAction func previousMonth(_ sender: UIButton) {
        if data.month == 1 {
            data.month = 12
            data.year -= 1
            
        } else {
            data.month -= 1
            
        }
        dateLabel.text = "\(monthNames[data.month - 1]), \(data.year)"
        collectionView.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

