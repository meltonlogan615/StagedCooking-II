//
//  ViewedHistoryViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/17/22.
//

import UIKit

class ViewedHistoryViewController: UITableViewController {
  
  let dataprovider = DataProvider()
  let myList = MyList()
  var viewedKeys = [Int]()
  
  var recipe = Recipe()
  var ingredients = [Ingredient]()
  var recipeID = 0
  var propertyDictionary = [String: String]()
  var ingredientDictionary = [String: String]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "viewedRecipe")
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Search", style: .plain, target: self, action: #selector(dismissView))
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editList))
    self.title = "Viewed History"
    self.isAccessibilityElement = true
    self.accessibilityLabel = "Viewd History"
    MyList.loadData()
    print( MyList.viewedRecipes)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return MyList.viewedRecipes.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "viewedRecipe", for: indexPath)
    var config = cell.defaultContentConfiguration()
    let value = MyList.viewedRecipes[indexPath.row]["title"]
    config.text = value
    cell.contentConfiguration = config
    
    cell.isAccessibilityElement = true
    cell.accessibilityLabel = value
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("tappa-tappa-tappa")

  }
  
}

extension ViewedHistoryViewController: RecipeByID {
    func loadRecipeByID(for chosenID: Int) {
      dataprovider.getRecipeByID(for: chosenID) { [weak self] (foodResult: Result<Recipe, Error>) in
        guard let self = self else { return }
        switch foodResult {
          case .success(let model):
            DispatchQueue.main.async {
              self.recipe = model as Recipe
              self.propertyDictionary = ParseObjectProperties.iterateObject(self.recipe)
            }
          case .failure(let error):
            print(error)
        }
      }
    }
    
  func loadIngredientsByID(for chosenID: Int) {
    dataprovider.getIngredientsByID(for: chosenID) { [weak self] (ingredientResult: Result<[Ingredient], Error>) in
      guard let self = self else { return }
      switch ingredientResult {
        case .success(let model):
          DispatchQueue.main.async {
            self.ingredients = model as [Ingredient]
            self.ingredientDictionary = ParseObjectProperties.iterateObject(self.ingredients)
          }
        case .failure(let error):
          print(error)
      }
    }
  }
}


