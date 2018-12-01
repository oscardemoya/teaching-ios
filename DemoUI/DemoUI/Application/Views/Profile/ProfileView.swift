//
//  ProfileView.swift
//  DemoUI
//
//  Created by profesor on 1/12/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

@IBDesignable
class ProfileView: ReusableView {
    
    @IBInspectable var image: UIImage = UIImage() {
        didSet {
            imageView.image = image
        }
    }
    
    @IBInspectable var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }
    
    @IBInspectable var subtitle: String = "" {
        didSet {
            subtitleLabel.text = subtitle
        }
    }
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    
}
