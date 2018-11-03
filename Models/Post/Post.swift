//
//  Post.swift
//  Test
//
//  Created by profesor on 3/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import ObjectMapper

struct Post: Mappable {
    
    var identifier: Int = 0
    var title: String?
    var body: String?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        identifier <- map["id"]
        title <- map["title"]
        body <- map["body"]
    }
    
}
