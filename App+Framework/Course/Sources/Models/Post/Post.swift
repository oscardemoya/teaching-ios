//
//  Post.swift
//  App
//
//  Created by profesor on 3/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import ObjectMapper

public struct Post: Mappable {
    
    public var identifier: Int = 0
    public var title: String?
    public var body: String?
    
    public init?(map: Map) {
    }
    
    public mutating func mapping(map: Map) {
        identifier <- map["id"]
        title <- map["title"]
        body <- map["body"]
    }
    
}
