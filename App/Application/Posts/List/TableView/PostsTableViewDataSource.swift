//
//  TableViewDataSource.swift
//  App
//
//  Created by profesor on 27/10/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

extension PostsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? PostCell else {
            return UITableViewCell()
        }
        let index = indexPath.row
        let post = posts[index]
        cell.titleLabel.text = post.title
        cell.bodyLabel.text = post.body
        return cell
    }

}
