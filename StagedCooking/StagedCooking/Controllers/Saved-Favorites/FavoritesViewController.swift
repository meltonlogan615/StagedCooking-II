//
//  FavoritesViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/22/21.
//

// MARK: - FOR LATER USE WHEN FAVORITES ARE ADDED


import UIKit

class FavoritesViewController: UIViewController {
  
  let favorites = MyList.favoriteRecipes
  
  let favTable = UITableView()
  let favCell = CellForTableView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    favTable.register(CellForTableView.self, forCellReuseIdentifier: "favoriteCell")
  }
  
  
  
  
}
extension FavoritesViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return favorites.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell", for: indexPath) as! CellForTableView
    cell.textLabel?.text = favorites[indexPath.row].title
 
    cell.isAccessibilityElement = true
    cell.accessibilityLabel = favorites[indexPath.row].title
  
    return cell
  }
}

extension FavoritesViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }
  
  // creates and calls an instance of RecipeViewController
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("maybe later")
  }
  
  // removes the instance of a recipe from the UserDefaults MyList.favoriteRecipes.
  func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    let action = UIContextualAction(style: .normal, title: "Delete\nFavorite") { action, view, completionHandler in
      print("Remove From Favorites")
    }
    return UISwipeActionsConfiguration(actions: [action])
  }
  
  // creates and calls an instance of StagedCards
  func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    let action = UIContextualAction(style: .normal, title: "Cook\nAgain") { action, view, completionHandler in
      
//      let action = UIContextualAction(style: .normal, title: "Cook\nAgain") { [weak self] action, view, completionHandler in
//      let stagesVC = StagedCardContainerViewController()
//      stagesVC.recipe =
//      stagesVC.ingredientsTest = self.ingredients
//      navigationController?.pushViewController(stagesVC, animated: true)
      
      print("Cooking Again")
    }
    return UISwipeActionsConfiguration(actions: [action])
  }
}

