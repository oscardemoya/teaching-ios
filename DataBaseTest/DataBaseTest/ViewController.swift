//
//  ViewController.swift
//  DataBaseTest
//
//  Created by Oscar De Moya on 11/23/18.
//  Copyright © 2018 Oscar De Moya. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func createUser() {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        let user = User(context: context)
        user.firstName = "Santiago"
        user.lastName = "De Moya"
        do {
            try context.save()
        } catch {
            print("Error creating user \(error)")
        }
    }
    
    @IBAction func readUsers() {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        //request.predicate = NSPredicate(format: "firstName = %@", "Oscar")
        request.returnsObjectsAsFaults = false
        do {
            guard let result = try context.fetch(request) as? [User] else { return }
            for user in result {
                print(user.firstName ?? "")
            }
        } catch {
            print("Error fetching user \(error)")
        }
    }
    
    @IBAction func deleteUser() {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        request.predicate = NSPredicate(format: "firstName = %@", "Mayra")
        request.returnsObjectsAsFaults = false
        do {
            guard let result = try context.fetch(request) as? [User] else { return }
            if let firstUser = result.first {
                context.delete(firstUser)
                try context.save()
            }
        } catch {
            print("Error deleting user \(error)")
        }
    }


}

