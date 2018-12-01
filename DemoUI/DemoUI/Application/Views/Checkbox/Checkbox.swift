//
//  Checkbox.swift
//  DemoUI
//
//  Created by profesor on 1/12/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

protocol CheckboxDelegate: class {
    func checkbox(_ checkbox: Checkbox, isChecked: Bool)
}

@IBDesignable
class Checkbox: ReusableView {
    
    weak var delegate: CheckboxDelegate?
    
    @IBInspectable var isChecked: Bool = false {
        didSet {
            checkmarkImageView.isHidden = !isChecked
        }
    }
    
    @IBOutlet var checkmarkImageView: UIImageView!
        
    @IBAction func toggleChecked() {
        isChecked.toggle()
        delegate?.checkbox(self, isChecked: isChecked)
    }
    
}
