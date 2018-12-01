//
//  DetailsViewController.swift
//  App
//
//  Created by profesor on 2/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit
import Course

class DetailsViewController: UIViewController {
    
    var user: User?
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var flagImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configure()
    }
    
    func configure() {
        guard let user = user else {
            return
        }
        nameLabel.text = user.name
        countryLabel.text = user.country?.name
        flagImageView.image = user.country?.icon
    }
    
    @IBAction func tapCountry() {
        guard let countryName = user?.country?.name else {
            return
        }
        let alertController = UIAlertController(title: "Country", message: countryName, preferredStyle: .alert)
        let acceptAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(acceptAction)
        present(alertController, animated: true, completion: nil)
    }
    
}
