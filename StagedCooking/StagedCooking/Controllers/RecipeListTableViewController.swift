//
//  RecipeListTableViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/15/21.
//

import UIKit

protocol RecipeByID: AnyObject {
  func loadRecipeByID(for chosenID: Int)
  func loadIngredientsByID(for chosenID: Int)
}

class RecipeListTableViewController: UITableViewController, PassingRequest {
  
  var dataprovider = DataProvider()
  var model = Response()
  var recipe = Recipe(title: "")
  
  let recipesTableView = UITableView()
  var searchedRecipe = String()
  var leftBarButtonText = String()
  var loadMoreButton = UIButton(type: .system)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    recipesTableView.register(CellForTableView.self, forCellReuseIdentifier: "recipeCell")
    recipesTableView.bounces = true
    
    title = searchedRecipe.capitalized
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Search", style: .plain, target: self, action: #selector(dismissView))
    
    loadRecipes(for: searchedRecipe)
    
    style()
    layout()
  }
  
  func loadRecipes(for: String) {
    dataprovider.getRecipes(for: SearchedTerm.searched) { [weak self] (foodResult: Result<Response, Error>) in
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
    guard let cellCount = model.results?.count else { return 2 }
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
      }
    }
    cell.accessoryType = .disclosureIndicator
    return cell
  }
  
  
  // DID SELECT ROW AT
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let selected = (model.results?[indexPath.row]) else { return }
    guard let selectedID = (model.results?[indexPath.row].id) else { return }
    guard let selectedTitle = (model.results?[indexPath.row].title) else { return }
    let recipeVC = RecipeViewController()
    SearchedTerm.requestedID = selectedID
    recipeVC.recipe = selected
    recipeVC.title = selectedTitle
    recipeVC.recipeID = selectedID
    navigationController?.pushViewController(recipeVC, animated: true)
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
  }
}

extension RecipeListTableViewController {
  private func style() {
    recipesTableView.translatesAutoresizingMaskIntoConstraints = false
    
    loadMoreButton.translatesAutoresizingMaskIntoConstraints = false
    loadMoreButton.setTitle("Load More", for: [])
    loadMoreButton.addTarget(self, action: #selector(loadMoreRecipes), for: .primaryActionTriggered)
  }
  
  private func layout() {
    view.addSubview(recipesTableView)
    view.addSubview(loadMoreButton)
    
    NSLayoutConstraint.activate([
      recipesTableView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
      recipesTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      recipesTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
    ])
    
    NSLayoutConstraint.activate([
      loadMoreButton.widthAnchor.constraint(equalTo: view.widthAnchor),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: loadMoreButton.trailingAnchor, multiplier: 1),
      view.safeAreaLayoutGuide.bottomAnchor.constraint(equalToSystemSpacingBelow: loadMoreButton.bottomAnchor, multiplier: 1),
      loadMoreButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1)
    ])
  }
}

extension RecipeListTableViewController {
  @objc func loadMoreRecipes() {
    print("poop")
  }
}



// TODO: - Add Filter Button to top right of NavigationBar (options: A-Z, dishType, mealType)

// TODO: - Group together by mealType / dishType?

// TODO: - Add Star to mark favorites and add to a locally stored array of favorites.

// TODO: - Update to include call to loadImage(url: )
// The issue here is that `cell.defaultContentConfiguration()` does not have a UIImageView that is directly accessable. Will need a way to unwrap the url, pass it into the UIImageView.loadImage(url:), assign the resulting image as a named variable and then config.image = UIImage(named: variable)
// See UIImage-Extension.swift for thoughts on replicating the previous extension, but providing a return value as a UIImage
