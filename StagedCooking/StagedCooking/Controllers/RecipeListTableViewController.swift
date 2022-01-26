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
  
  var searchedRecipe = String()
  var cellThumbnail = String()
  var thumbnailURL = URL(string: "")
  var leftBarButtonText = String()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "recipeCell")
    
    title = searchedRecipe.capitalized
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Search", style: .plain, target: self, action: #selector(dismissView))
    
    //    navigationItem.leftBarButtonItem = UIBarButtonItem(title: leftBarButtonText, style: .plain, target: self, action: #selector(dismissView))
    tableView.bounces = true
    loadRecipes(for: searchedRecipe)
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
            guard let image = result.image else { return }
            self.cellThumbnail = image
            print(self.cellThumbnail)
            // MARK: - Thumbnails
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath)
    var config = cell.defaultContentConfiguration()
    if let recipeItems = model.results {
      if let receipe = recipeItems[indexPath.row].title {
        config.text = receipe
        config.textProperties.numberOfLines = 0
        config.textProperties.lineBreakMode = .byWordWrapping
        config.imageToTextPadding = 5
      }
    }
    cell.contentConfiguration = config
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
}



// TODO: - Add Filter Button to top right of NavigationBar (options: A-Z, dishType, mealType)

// TODO: - Group together by mealType / dishType?

// TODO: - Add Star to mark favorites and add to a locally stored array of favorites.

// TODO: - Update to include call to loadImage(url: )
// The iss here is that `cell.defaultContentConfiguration()` does not have a UIImageView that is obviously accessable. Will need a way to unwrap the url, pass it into the UIImageView.loadImage(url:), assign the resulting image as a named variable and then config.image = UIImage(named: variable)
// See UIImage-Extension.swift for thoughts on replicating the previous extension, but providing a return value as a UIImage
