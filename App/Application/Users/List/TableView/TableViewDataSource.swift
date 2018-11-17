//
//  TableViewDataSource.swift
//  App
//
//  Created by profesor on 27/10/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? CustomCell else {
            return UITableViewCell()
        }
        let index = indexPath.row
        let user = users[index]
        cell.nameLabel.text = user.name
        cell.countryLabel.text = user.country?.name
        return cell
    }

}
