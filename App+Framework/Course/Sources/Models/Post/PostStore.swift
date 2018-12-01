//
//  Request.swift
//  App
//
//  Created by profesor on 3/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import Alamofire
import ObjectMapper

public struct PostStore {
    
    public static func fetchPosts(completion: @escaping ([Post]?) -> Void) {
        Alamofire.request("https://jsonplaceholder.typicode.com/posts").responseJSON { response in
            if let json = response.result.value as? [[String: Any]] {
                let array = Mapper<Post>().mapArray(JSONArray: json)
                completion(array)
            } else {
                completion(nil)
            }
        }
    }
    
    public static func fetchPost(identifier: Int, completion: @escaping (Post?) -> Void) {
        Alamofire.request("https://jsonplaceholder.typicode.com/posts/\(identifier)").responseJSON { response in
            if let json = response.result.value as? [String: Any] {
                let post = Mapper<Post>().map(JSON: json)
                completion(post)
            } else {
                completion(nil)
            }
        }
    }
    
}
