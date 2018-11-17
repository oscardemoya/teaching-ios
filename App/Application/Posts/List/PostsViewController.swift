//
//  ViewController.swift
//  App
//
//  Created by profesor on 27/10/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit
import Course

class PostsViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var posts = [Post]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PostStore.fetchPosts { posts in
            guard let posts = posts else {
                return
            }
            self.posts = posts
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let viewController = segue.destination as? DetailsViewController else {
//            return
//        }
//        guard let user = sender as? User else {
//            return
//        }
//        viewController.user = user
    }
//    
//    func showDetails(user: User) {
//        if user.country == .colombia {
//            performSegue(withIdentifier: "Details", sender: user)
//        } else {
//            showErrorAlert()
//        }
//    }
//    
//    func showErrorAlert() {
//        let alertController = UIAlertController(title: "Error", message: "No disponible", preferredStyle: .alert)
//        let acceptAction = UIAlertAction(title: "OK", style: .default)
//        alertController.addAction(acceptAction)
//        present(alertController, animated: true, completion: nil)
//    }
    
}
