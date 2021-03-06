//
//  RecipeListTableViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/15/21.
//

import UIKit

protocol RecipeByID: AnyObject {
  func loadRecipeByID(for chosenID: Int)
//  func loadIngredientsByID(for chosenID: Int)
}

class RecipeListTableViewController: UITableViewController, PassingRequest {
  
  var dataprovider = DataProvider()
  var model = Response()
  var recipe = Recipe(title: "")
  
  let recipesTableView = UITableView()
  var action = UIContextualAction()
  
  var searchedRecipe = String()
  var leftBarButtonText = String()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    recipesTableView.register(CellForTableView.self, forCellReuseIdentifier: "recipeCell")
    recipesTableView.bounces = true
    recipesTableView.backgroundColor = .clear
    view.backgroundColor = UIColor(named: "AppWhite")
    title = searchedRecipe.capitalized
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Search", style: .plain, target: self, action: #selector(dismissView))
    
    loadRecipes(for: searchedRecipe)
    
    style()
    layout()
  }
  
  func loadRecipes(for: String) {
    dataprovider.getRecipes(for: ChefDefault.searched) { [weak self] (foodResult: Result<Response, Error>) in
      guard let self = self else { return }
      switch foodResult {
        case .success(let model):
          self.model = model as Response
          guard let results = self.model.results else { return }
          for result in results {
            // MARK: - Text Labels
            guard let receipe = result.title else { return }
            self.searchedRecipe = receipe
          }
        case .failure(let error):
          print(error)
      }
      self.tableView.reloadData()
    }
  }
  
  // MARK: - Table Setup
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    guard let cellCount = model.results?.count  else { return 2 }
    return cellCount
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = recipesTableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) as! CellForTableView
    if let recipeItems = model.results {
      if let receipeTitle = recipeItems[indexPath.row].title {
        cell.titleLabel.text = receipeTitle
      }
      if let recipeImage = recipeItems[indexPath.row].image {
        cell.image.loadImage(url: recipeImage)
        cell.image.layer.cornerRadius = 8
        cell.image.clipsToBounds = true
      }
    }
    cell.accessoryType = .disclosureIndicator
    return cell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }
  
  
  // MARK: - DID SELECT ROW AT
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let selected = (model.results?[indexPath.row]) else { return }
    guard let selectedID = (model.results?[indexPath.row].id) else { return }
    guard let selectedTitle = (model.results?[indexPath.row].title) else { return }
    let recipeVC = RecipeViewController()
    ChefDefault.requestedID = selectedID
    recipeVC.recipe = selected
    recipeVC.title = selectedTitle
    recipeVC.recipeID = selectedID
    navigationController?.pushViewController(recipeVC, animated: true)
  }
  
  // MARK: - SwipeGestures
  // From Leading to Trailing
  override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    if let recipeToSave = self.model.results {
      action = UIContextualAction(style: .normal, title: "Save") { action, view, completionHandler in
        let recipe = recipeToSave[indexPath.row]
        ChefDefault.addToSaved(recipe: recipe)
        ChefDefault.saveChanges()
        print(String(describing: type(of: recipe)))
        print("Leading Swipe", recipe.title ?? "Nah")
      }
      action.image = UIImage(systemName: "star")
      action.backgroundColor = .orange
    }
    return UISwipeActionsConfiguration(actions: [action])
  }
  
  // From Trailing to Leading
  override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    if let recipeToFave = model.results {
      action = UIContextualAction(style: .normal, title: "Favorite") { action, view, completionHandler in
        let recipe = recipeToFave[indexPath.row]
        ChefDefault.addToFavorites(recipe: recipe)
        ChefDefault.saveChanges()
        print("Trailing Swipe", recipe.title ?? "Nah")
      }
      action.image = UIImage(systemName: "heart")
      action.backgroundColor = .systemPink

    }
    return UISwipeActionsConfiguration(actions: [action])
  }
}

extension RecipeListTableViewController {
  private func style() {
    recipesTableView.translatesAutoresizingMaskIntoConstraints = false
    }
  
  private func layout() {
    view.addSubview(recipesTableView)
    
    NSLayoutConstraint.activate([
      recipesTableView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
      recipesTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      recipesTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
    ])
    
  }
}




// TODO: - Add Filter Button to top right of NavigationBar (options: A-Z, dishType, mealType)

// TODO: - Group together by mealType / dishType?

// TODO: - Add Star to mark favorites and add to a locally stored array of favorites.

