//
//  ImageViewController.swift
//  App
//
//  Created by profesor on 16/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit
import Kingfisher

class ImageViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var sliderLabel: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png")
        imageView.kf.setImage(with: url)
        sliderLabel.text = "0"
    }
    
    @IBAction func sliderDidChange(sender: UISlider) {
        sliderLabel.text = "\(sender.value)"
    }
    
    @IBAction func unwindToImage(_ segue: UIStoryboardSegue) {
        guard let viewController = segue.source as? FormViewController else { return }
        print(viewController.firstNameTextField.text ?? "")
        print(viewController.lastNameTextField.text ?? "")
    }
    
}
