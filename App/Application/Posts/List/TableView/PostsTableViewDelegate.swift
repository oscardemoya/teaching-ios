//
//  TableViewDelegate.swift
//  App
//
//  Created by profesor on 3/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit
import Course

extension PostsViewController: UITableViewDelegate, PostCellDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let post = posts[indexPath.row]
        PostStore.fetchPost(identifier: post.identifier) { (post) in
            guard let post = post else {
                return
            }
            print(post)
        }
    }
    
    public func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let settingsAction = UIContextualAction(style: .normal, title: nil, handler: {
            (action: UIContextualAction, view: UIView, success: (Bool) -> Void) in
            print("SETTINGS")
            success(true)
        })
        settingsAction.image = UIImage(named: "icon_settings")
        settingsAction.title = "Settings"
        settingsAction.backgroundColor = .green
        return UISwipeActionsConfiguration(actions: [settingsAction])
    }
    
    public func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let shareAction = UIContextualAction(style: .normal, title: nil, handler: {
            (action: UIContextualAction, view: UIView, success: (Bool) -> Void) in
            print("SHARE")
            success(true)
        })
        shareAction.image = UIImage(named: "icon_share")
        shareAction.title = "Share"
        shareAction.backgroundColor = .blue
        let configuration = UISwipeActionsConfiguration(actions: [shareAction])
        configuration.performsFirstActionWithFullSwipe = false
        return configuration
    }
    
    func postCellLike(cell: PostCell) {
        print("LIKE")
    }
    
    func postCellBookmark(cell: PostCell) {
        print("BOOKMARK")
    }
    
}
