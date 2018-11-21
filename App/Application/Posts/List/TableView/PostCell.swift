//
//  CustomCell.swift
//  App
//
//  Created by profesor on 2/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

protocol PostCellDelegate: class {
    func postCellLike(cell: PostCell)
    func postCellBookmark(cell: PostCell)
}

class PostCell: UITableViewCell {
    
    weak var delegate: PostCellDelegate?
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var bodyLabel: UILabel!
    
    @IBAction func like() {
        delegate?.postCellLike(cell: self)
    }
    
    @IBAction func bookmark() {
        delegate?.postCellBookmark(cell: self)
    }
    
}
