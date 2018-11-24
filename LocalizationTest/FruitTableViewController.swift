//
//  FruitTableViewController.swift
//  LocalizationTest
//
//  Created by Ruslan Akberov on 24/11/2018.
//  Copyright © 2018 Ruslan Akberov. All rights reserved.
//

import UIKit

class FruitTableViewController: UITableViewController {
    
    var fruits = [NSLocalizedString("Apple", comment: ""), NSLocalizedString("Orange", comment: ""), NSLocalizedString("Grapes", comment: "")]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell", for: indexPath)
        cell.textLabel!.text = fruits[indexPath.row]
        return cell
    }
    
    @IBAction func addBarButtonTapped(_ sender: UIBarButtonItem) {
        fruits.append(NSLocalizedString("Peach", comment: ""))
        tableView.beginUpdates()
        tableView.insertRows(at: [IndexPath(row: fruits.count - 1, section: 0)], with: .automatic)
        tableView.endUpdates()
    }
    
}
