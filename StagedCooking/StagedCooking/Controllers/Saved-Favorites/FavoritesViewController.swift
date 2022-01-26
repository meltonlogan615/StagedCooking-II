//
//  FavoritesViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/22/21.
//

// MARK: - FOR LATER USE WHEN FAVORITES ARE ADDED


import UIKit

class FavoritesViewController: UITableViewController {
  
  let favorites = MyList.favoriteRecipes
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "favoriteCell")
  }
  
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return favorites.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell", for: indexPath)
    cell.textLabel?.text = favorites[indexPath.row].title
    return cell
  }
  
}
