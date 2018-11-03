//
//  Request.swift
//  Test
//
//  Created by profesor on 3/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import Alamofire

struct PostStore {
    
    static func fetchPosts() {
        Alamofire.request("https://jsonplaceholder.typicode.com/posts").responseJSON { response in
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
        }
    }
    
}
