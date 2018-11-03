//
//  IngredientsDataSource.swift
//  FoodMaker
//
//  Created by Azizur Rahman on 2018-04-10.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit
import MobileCoreServices

class PiecesDataSource: NSObject, UITableViewDataSource {
    
    var pieces: [Piece]
    
    init(pieces: [Piece]) {
        self.pieces = pieces
        super.init()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pieces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PieceCell", for: indexPath)
        
        cell.textLabel?.text = pieces[indexPath.row].name
        cell.imageView?.image = pieces[indexPath.row].image
        cell.imageView?.layer.masksToBounds = true
        cell.imageView?.layer.cornerRadius = 10
        
        return cell
    }
    
    func moveItem(at sourceIndex: Int, to destinationIndex: Int) {
        guard sourceIndex != destinationIndex else { return }
        
        let piece = pieces[sourceIndex]
        pieces.remove(at: sourceIndex)
        pieces.insert(piece, at: destinationIndex)
        
    }
    
    func dragItem(for indexPath: IndexPath) -> [UIDragItem] {
        let piece = pieces[indexPath.row]
        let itemProvider = NSItemProvider()
        itemProvider.registerDataRepresentation(forTypeIdentifier: kUTTypePlainText as String, visibility: .all) { completion in
            
            let data = piece.name.data(using: .utf8)
            completion(data, nil)
            return nil
            
        }
        
        let dragItem = UIDragItem(itemProvider: itemProvider)
        return [dragItem]
        
    }
    
}
