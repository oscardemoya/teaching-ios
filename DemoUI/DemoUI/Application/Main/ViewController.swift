//
//  ViewController.swift
//  DemoUI
//
//  Created by profesor on 30/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, CheckboxDelegate, SFSafariViewControllerDelegate {

    @IBOutlet var label: UILabel!
    @IBOutlet var alertLabel: UILabel!
    @IBOutlet var checkbox1: Checkbox!
    @IBOutlet var checkbox2: Checkbox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setDefaultFont()
        checkbox1.delegate = self
        checkbox2.delegate = self
    }
    
    @IBAction func changeColor() {
        label.textColor = ColorScheme.delete
        label.accessibilityIdentifier = "xyz"
        alertLabel.text = NSLocalizedString("Alert", comment: "")
    }
    
    @IBAction func showWebsite() {
        guard let url = URL(string: "http://google.com") else { return }
        let viewController = SFSafariViewController(url: url)
        viewController.delegate = self
        present(viewController, animated: true)
    }
    
    public func safariViewController(_ controller: SFSafariViewController, initialLoadDidRedirectTo URL: URL) {
        print(URL)
    }
    
    func checkbox(_ checkbox: Checkbox, isChecked: Bool) {
        if checkbox == checkbox1 {
            print("Checkbox 1: \(isChecked)")
        } else if checkbox == checkbox2 {
            print("Checkbox 2: \(isChecked)")
        }
    }

}

