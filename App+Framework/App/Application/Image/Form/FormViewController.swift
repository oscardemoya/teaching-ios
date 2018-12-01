//
//  FormViewController.swift
//  App
//
//  Created by profesor on 17/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        startAvoidingKeyboard()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        stopAvoidingKeyboard()
    }

}
