//
//  Post.swift
//  Test
//
//  Created by profesor on 3/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import ObjectMapper

struct Post: Mappable {
    
    var title: Double?
    var body: Double?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        title <- map["title"]
        body <- map["body"]
    }
    
}
