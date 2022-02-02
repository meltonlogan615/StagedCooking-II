//
//  MyList.swift
//  StagedCooking
//
//  Created by Logan Melton on 12/3/21.
//

import Foundation

struct MyList {
  static var searched = ""
  static var requestedID = 0
  static var selectedRecipe = Recipe()
  
  static var isLoggedIn = true
  static var defaults = UserDefaults.standard
  static var favoriteRecipes = [Recipe]()
  static var savedRecipes = [Recipe]() // Saved, but not an explicit favorite. But can still be both
  static var viewedRecipes = [[String: String]]()
  static var searchHistory = [String]() // perhaps used later as part of an autocomplete in search
  
  static func addToFavorites(recipe: Recipe) {
//    MyList.favoriteRecipes.append(recipe)
    MyList.favoriteRecipes.insert(recipe, at: 0)
  }
  
  static func addToSaved(recipe: Recipe) {
    MyList.savedRecipes.append(recipe)
  }
  
  static func addToViewed(recipeDictionary: [String: String]) {
    MyList.viewedRecipes.insert(recipeDictionary, at: 0)
  }
  
  static func addToSearchHistory(searchTerm: String) {
    MyList.searchHistory.insert(searchTerm, at: 0)
  }
  
  static func saveChanges() {
    MyList.defaults.set(MyList.favoriteRecipes, forKey: "favorites")
    MyList.defaults.set(MyList.savedRecipes, forKey: "saved")
    MyList.defaults.set(MyList.viewedRecipes, forKey: "viewed")
    MyList.defaults.set(MyList.searchHistory, forKey: "history")
  }
  
  static func loadData() {
    MyList.favoriteRecipes = MyList.defaults.object(forKey: "favorites") as? [Recipe] ?? [Recipe]()
    MyList.savedRecipes = MyList.defaults.object(forKey: "saved") as? [Recipe] ?? [Recipe]()
    MyList.viewedRecipes = MyList.defaults.object(forKey: "viewed") as? [[String: String]] ?? [[String: String]]()
    MyList.searchHistory = MyList.defaults.object(forKey: "history") as? [String] ?? [String]()
  }
  
}
