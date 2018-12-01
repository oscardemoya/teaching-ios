//
//  Reusable.swift
//  DemoUI
//
//  Created by profesor on 1/12/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

protocol Reusable {
    func loadViewFromXib() -> UIView
}

extension Reusable where Self: UIView {
    
    func loadViewFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let xibName = String(describing: type(of: self))
        let xib = UINib(nibName: xibName, bundle: bundle)
        guard let view = xib.instantiate(withOwner: self, options: nil).first as? UIView else {
            print("Could not load view from nib file (\(xibName)).")
            return UIView()
        }
        return view
    }
    
}
