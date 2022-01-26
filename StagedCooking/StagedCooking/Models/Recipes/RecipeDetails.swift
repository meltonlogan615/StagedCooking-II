//
//  RecipeDetails.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/28/21.
//

import Foundation

struct Recipe: Decodable, Identifiable, Comparable, Hashable {
  // Necessary Properties
  var id: Int?
  var title: String?
  var servings: Int?
  var summary: String?
  var extendedIngredients: [Ingredient]?
  var instructions: String?
  var analyzedInstructions: [Step]?

  // Prep Times:
  var preparationMinutes: Int?
  var cookingMinutes: Int?
  var readyInMinutes: Int?

  // Image Info:
  var image: String?
  var imageType: String?
  
  var cuisines: [CuisineTypes]?
  var dishTypes: [String]? //[MealTypes]?
  var diets: [String]? // [Diets]?
  
  //  Nutrition Info & Dietary Restrictions:
  var nutrition: [Nutrients]?
  var vegetarian:  Bool?
  var vegan: Bool?
  var glutenFree: Bool?
  var dairyFree: Bool?
  var veryHealthy: Bool?
  var cheap: Bool?
  var veryPopular: Bool?
  var sustainable: Bool?
  var weightWatcherSmartPoints: Int?
  var gaps: String? // Literal string of no or yes
  var lowFodmap: Bool?
  var ketogenic: Bool?
  var whole30: Bool?
  var aggregateLikes: Int?
  var spoonacularScore: Int?
  var healthScore: Int?
  
//   Copyright Attribution:
  var creditsText: String?
  var sourceName: String?
  var sourceUrl: URL?
  var license: String?

  // Additional Info:
  var pricePerServing: Double?
  var occasions: [String]?
  var winePairing: WinePairing?
  var originalId: Int?
  var spoonacularSourceUrl: URL?

  
  
  static func < (lhs: Self, rhs: Self) -> Bool {
    var result = false
    if let leftTitle = lhs.title {
      if let rightTitle = rhs.title {
        result = leftTitle < rightTitle
      }
    }
    return result
  }
}
