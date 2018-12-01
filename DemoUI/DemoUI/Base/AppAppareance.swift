//
//  AppAppareance.swift
//  DemoUI
//
//  Created by profesor on 30/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

struct AppAppareance {
    
    static func configure() {
        UITextField.appearance().textColor = .gray
        UITextField.appearance().backgroundColor = ColorScheme.action.withAlphaComponent(0.2)
    }
    
}
