//
//  SavedViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/22/21.
//

// MARK: - FOR LATER USE WHEN SAVED RECIPES ARE ADDED

import UIKit

import UIKit

class SavedViewController: UIViewController {
  
  let saved = MyList.savedRecipes
  
  let savedTable = UITableView()
  let savedCell = CellForTableView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    savedTable.register(CellForTableView.self, forCellReuseIdentifier: "savedCell")
  }
  
  
  
  
}
extension SavedViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return saved.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "savedCell", for: indexPath) as! CellForTableView
    cell.textLabel?.text = saved[indexPath.row].title
    cell.isAccessibilityElement = true
    cell.accessibilityLabel = saved[indexPath.row].title
    return cell
  }
}

extension SavedViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }
  
  // creates and calls an instance of RecipeViewController
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("maybe later")
  }
  
  // removes the instance of a recipe from the UserDefaults MyList.favoriteRecipes.
  func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    let action = UIContextualAction(style: .normal, title: "Remove\nSaved") { action, view, completionHandler in
      print("Remove From Saved")
    }
    return UISwipeActionsConfiguration(actions: [action])
  }
  
  // creates and calls an instance of StagedCards
  func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    let action = UIContextualAction(style: .normal, title: "Start\nCooking") { action, view, completionHandler in
      
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
