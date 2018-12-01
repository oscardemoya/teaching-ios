//
//  ReusableView.swift
//  DemoUI
//
//  Created by profesor on 1/12/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

class ReusableView: UIView, Reusable {
    
    var view: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadXib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadXib()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        loadXib()
    }
    
    func loadXib() {
        if view == nil {
            let view = loadViewFromXib()
            self.view = view
            view.frame = frame
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
            view.topAnchor.constraint(equalTo: topAnchor).isActive = true
            view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        }
    }
    
}
