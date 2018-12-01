//
//  ViewFonts.swift
//  DemoUI
//
//  Created by profesor on 1/12/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

extension UIView {
    
    func setDefaultFont() {
        subviews.forEach { (subview) in
            if let label = subview as? UILabel {
                label.font = label.font.custom
            } else if let button = subview as? UIButton,
                let titleLabel = button.titleLabel {
                titleLabel.font = titleLabel.font.custom
            } else if let textField = subview as? UITextField {
                textField.font = textField.font?.custom
            } else if let textView = subview as? UITextView {
                textView.font = textView.font?.custom
            } else {
                subview.setDefaultFont()
            }
        }
    }
    
}
