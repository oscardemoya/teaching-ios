//
//  User.swift
//  Test
//
//  Created by profesor on 2/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import Foundation

struct User {

    var name: String = ""
    var country: Country?
    
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
    
}
