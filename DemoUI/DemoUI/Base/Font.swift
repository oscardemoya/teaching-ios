//
//  Font.swift
//  DemoUI
//
//  Created by profesor on 1/12/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

enum Font: String {
    
    case light = "Light"
    case regular = "Regular"
    case bold = "Bold"
    
    static let familyName = "Open Sans"
    static let fontNamePrefix = "OpenSans"
    
    init(suffix: String) {
        switch suffix {
        case "Light": self = .light
        case "Regular": self = .regular
        case "Bold": self = .bold
        default: self = .regular
        }
    }
    
    static func printAllFonts() {
        print(UIFont.familyNames)
        UIFont.familyNames.forEach { (familyName) in
            print(familyName)
            UIFont.fontNames(forFamilyName: familyName).forEach { (fontName) in
                print("- \(fontName)")
            }
        }
    }
    
    static func printFonts() {
        print(Font.familyName)
        UIFont.fontNames(forFamilyName: Font.familyName).forEach { (fontName) in
            print("- \(fontName)")
        }
    }
    
    var name: String {
        return "\(Font.fontNamePrefix)-\(rawValue)"
    }
    
    func font(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
}

extension UIFont {
    
    var custom: UIFont {
        return UIFont.font(style: fontStyle, ofSize: pointSize)
    }
    
    static func font(style: Font, ofSize size: CGFloat) -> UIFont {
        return UIFont(name: style.name, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    var fontStyle: Font {
        guard let suffix = fontName.split(separator: "-").last else { return .regular }
        return Font(suffix: String(suffix))
    }
    
}
