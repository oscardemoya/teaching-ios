//
//  User.swift
//  App
//
//  Created by profesor on 2/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import Foundation

public struct User {

    public var name: String = ""
    public var country: Country?
    
    public init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
    
}
