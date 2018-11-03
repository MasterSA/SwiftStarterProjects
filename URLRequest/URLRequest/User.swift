//
//  User.swift
//  URLRequest
//
//  Created by Azizur Rahman on 2018-04-02.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import Foundation

class User {
    var displayName: String
    var email: String
    var password: String
    
    init(displayName: String, email: String, password: String) {
        self.displayName = displayName
        self.email = email
        self.password = password
    }
}
