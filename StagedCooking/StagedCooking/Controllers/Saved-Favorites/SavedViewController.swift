//
//  SavedViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/22/21.
//

// MARK: - FOR LATER USE WHEN SAVED RECIPES ARE ADDED

import UIKit

class SavedViewController: UITableViewController {
  
  let saved = MyList.savedRecipes
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "savedCell")
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return saved.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "savedCell", for: indexPath)
    cell.textLabel?.text = saved[indexPath.row].title
    return cell
  }
  
}
