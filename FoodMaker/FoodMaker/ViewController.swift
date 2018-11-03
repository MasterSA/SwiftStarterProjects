//
//  ViewController.swift
//  FoodMaker
//
//  Created by Azizur Rahman on 2018-04-10.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var piecesTableView: UITableView!
    @IBOutlet weak var puzzleTableView: UITableView!
    let piecesDataSource = PiecesDataSource(pieces: [Piece(name: "Eggs", image: #imageLiteral(resourceName: "ic_menu_36pt")), Piece(name: "Milk", image: #imageLiteral(resourceName: "ic_menu_36pt")), Piece(name: "Flour", image: #imageLiteral(resourceName: "ic_menu_36pt")), Piece(name: "Cream", image: #imageLiteral(resourceName: "ic_menu_36pt")), Piece(name: "Straw", image: #imageLiteral(resourceName: "ic_menu_36pt")), Piece(name: "Blue", image: #imageLiteral(resourceName: "ic_menu_36pt")), Piece(name: "Beans", image: #imageLiteral(resourceName: "ic_menu_36pt"))])
    let puzzleDataSource = PiecesDataSource(pieces: [])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for tableView in [piecesTableView, puzzleTableView] {
            if let tableView = tableView {
                tableView.dataSource = dataSourceForTableView(tableView)
                tableView.dragDelegate = self
                tableView.dragInteractionEnabled = true
                tableView.reloadData()
                
            }
        }
        
    }
    
    func dataSourceForTableView(_ tableView: UITableView) -> PiecesDataSource {
        if tableView == piecesTableView {
            return piecesDataSource
            
        } else {
            return puzzleDataSource
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDragDelegate {
    func tableView(_ tableView: UITableView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
        let dataSource = dataSourceForTableView(tableView)
        return dataSource.dragItem(for: indexPath)
    }
    
}

