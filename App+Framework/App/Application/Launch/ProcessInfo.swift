//
//  ProcessInfo.swift
//  AppUITests
//
//  Created by Oscar De Moya on 11/30/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import Foundation

extension ProcessInfo {
    
    var isUITesting: Bool {
        return arguments.contains("UITesting")
    }
    
}
