//
//  RecipeViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/17/22.
//


import Foundation

import UIKit

class RecipeViewController: UIViewController {
  
  let testData = DummyData()
  let dataprovider = DataProvider()
  
  let label = UILabel()
  let stackView = UIStackView()
  let recipeView = RecipeHeaderView()
  let ingredientsView = RecipeMetaDataView()
  let searchView = SearchView()
  let startCookingButton = UIButton(type: .roundedRect)
  
  var recipe = Recipe()
  var ingredients = [Ingredient]()
  var recipeID = 0
  var propertyDictionary = [String: String]()
  var ingredientDictionary = [String: String]()
  
  override func viewWillAppear(_ animated: Bool) {
    loadRecipeByID(for: recipeID)
    loadIngredientsByID(for: recipeID)
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
  }
}

extension RecipeViewController {
  
  func style() {
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .vertical
    stackView.spacing = 8
    
    recipeView.translatesAutoresizingMaskIntoConstraints = false
    
    ingredientsView.translatesAutoresizingMaskIntoConstraints = false
    
    searchView.translatesAutoresizingMaskIntoConstraints = false
    
    startCookingButton.translatesAutoresizingMaskIntoConstraints = false
    startCookingButton.configuration = .borderedProminent()
    startCookingButton.setTitle("Start Cooking", for: [])
    startCookingButton.addTarget(self, action: #selector(startCookingButtonTapped), for: .primaryActionTriggered)
  }
  
  func layout() {
    stackView.addArrangedSubview(recipeView)
    recipeView.heightAnchor.constraint(lessThanOrEqualToConstant: (view.frame.height / 4)).isActive = true
    stackView.addArrangedSubview(ingredientsView)
    
    view.addSubview(stackView)
    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2),
      view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
      stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2)
    ])
    
    view.addSubview(startCookingButton)
    NSLayoutConstraint.activate([
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: startCookingButton.trailingAnchor, multiplier: 2),
      view.bottomAnchor.constraint(equalToSystemSpacingBelow: startCookingButton.bottomAnchor, multiplier: 6),
      startCookingButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
      startCookingButton.heightAnchor.constraint(equalToConstant: 48)
    ])
  }
}

// MARK: - ButtonActions
extension RecipeViewController {
  @objc func startCookingButtonTapped(_ sender: UIButton) {
    let stagesVC = StagedCardContainerViewController()
    stagesVC.recipe = self.recipe
    stagesVC.ingredientsTest = self.ingredients
    navigationController?.pushViewController(stagesVC, animated: true)
    print("tapped")
  }
}


// MARK: - Networking
extension RecipeViewController: RecipeByID {
  func loadRecipeByID(for chosenID: Int) {
    dataprovider.getRecipeByID(for: chosenID) { [weak self] (foodResult: Result<Recipe, Error>) in
      var myList = MyList()
      guard let self = self else { return }
      switch foodResult {
        case .success(let model):
          DispatchQueue.main.async {
            self.recipe = model as Recipe
            print(self.recipe)
            self.propertyDictionary = ParseObjectProperties.iterateObject(self.recipe)
            myList.addToViewed(recipeDictionary: self.propertyDictionary)
            myList.saveChanges()
            self.setAttributeValues()
          }
        case .failure(let error):
          print("ingredient error:", error)
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

extension RecipeViewController {  
  func setAttributeValues() {
    if let titleText = propertyDictionary["title"] {
      self.title = titleText
    }
    if let image = propertyDictionary["image"] {
      recipeView.imageView.loadImage(url: image)
    }
    
    if let servings = propertyDictionary["servings"] {
      ingredientsView.servingsLabel.text = "Servings: \(servings)"
    }
    
    if let isCheap = propertyDictionary["cheap"] {
      if isCheap == "true" {
        ingredientsView.cheapLabel.text = "Cheap Eats"
      }
    }
    
    if let readyInMinutes = propertyDictionary["readyInMinutes"] {
      ingredientsView.readyInMinutesLabel.text = "Ready in \(readyInMinutes) minutes"
    }

    if let isVegetarian = propertyDictionary["vegetarian"] {
      if isVegetarian == "true" {
        ingredientsView.vegetarianLabel.text = "Vegetarian"
      }
    }
    
    if let isVegan = propertyDictionary["vegan"] {
      if isVegan == "true" {
        ingredientsView.veganLabel.text = "Vegan"
      }
    }
    
    if let isDairyFree = propertyDictionary["diaryFree"] {
      if isDairyFree == "true" {
        ingredientsView.diaryFreeLabel.text = "Dairy Free"
      }
    }
    
    if let summary = propertyDictionary["summary"] {
      ingredientsView.summary.attributedText = summary.htmlAttributedString()
    }
  }
}

