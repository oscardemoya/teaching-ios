//
//  Country.swift
//  App
//
//  Created by profesor on 3/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

public enum Country: String {
    
    case colombia = "Colombia"
    case venezuela = "Republica Bolivariana de Venezuela"
    case mexico = "México"
    
    public var icon: UIImage? {
        switch self {
        case .colombia:
            return UIImage(named: "flag_colombia")
        case .mexico:
            return UIImage(named: "flag_mexico")
        case .venezuela:
            return UIImage(named: "flag_venezuela")
        }
    }
    
    public var name: String {
        return rawValue
    }
    
}
