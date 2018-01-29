//
//  SideMenuVC.swift
//  PyshingMenu
//
//  Created by Azizur Rahman on 2018-01-26.
//  Copyright © 2018 Aariz Rhaman. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        switch indexPath.row {
        case 0:
            print("ShowHome")
//            NotificationCenter.default.post(name: NSNotification.Name("ShowHome"), object: nil)
             NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        case 1:
             print("ShowAccount")
            NotificationCenter.default.post(name: NSNotification.Name("ShowAccount"), object: nil)
        case 7:
             print("ShowAbout")
            NotificationCenter.default.post(name: NSNotification.Name("ShowAbout"), object: nil)
        default: break
        }
    }
    
}
