//
//  RecipeDetails.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/28/21.
//

import Foundation

struct Recipe: Decodable, Identifiable, Comparable, Hashable {
  // MARK: - Necessary Properties - L0
  var id: Int?
  var title: String?
  var servings: Int?
  var summary: String?
  var instructions: String?
  
  // MARK: - Prep Times - L0
  var preparationMinutes: Int?
  var cookingMinutes: Int?
  var readyInMinutes: Int?
  
  // MARK: - Image Info - L0
  var image: String?
  var imageType: String?
  
  var dishTypes: [String]? // [MealTypes]? <- As an enum of available values, this may not require CodingKeys, but will still need to be included into the init() method
  
  var diets: [String]? // [Diets]? <- As an enum of available values, this may not require CodingKeys, but will still need to be included into the init() method
  
  // MARK: - Nutrition Info & Dietary Restrictions - L0
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
  
  // MARK: - Copyright Attribution - L0
  var creditsText: String?
  var sourceName: String?
  var sourceUrl: URL?
  var license: String?
  
  // MARK: - Additional Info - L0
  var pricePerServing: Double?
  var occasions: [String]?
  var originalId: Int?
  var spoonacularSourceUrl: URL?
  
  // MARK: - WinePairing Properties For CodingKeys - L1
  //  var winePairing: WinePairing? <- original property doing heirarchy.
  var pairingText: String?
  var pairedWines: [String]?
  
  // MARK: - Product Properties For CodingKeys - L2 within WinePairings
  //  var productMatches: [Product]? // may be it's own thin
  var price: String?
  var likes: Int?
  var badges: [String]?
  var important_badges: [String]?
  var serving_size: String?
  var number_of_servings: Int?
  var spoontacular_score: Int?
  var breadcrumbs: [String]?
  var generated_text: String?
  var ingredientCount: Int?
  var images: [String]?
  
  // MARK: - CuisineType Property For CodingKeys - L
  var cuisines: [CuisineTypes]? // <- As an enum of available values, this may not require CodingKeys, but will still need to be included into the init() method

  // MARK: - Nutrition Properties For CodingKeys
//  var nutrition: [Nutrients]?
  var name: String?
  var amount: Double?
  var unit: String?
  var percentOfDailyNeeds: Double?

  // MARK: - AnalyzedInstructions Properties For CodingKeys - L
//  var analyzedInstructions: [AnalyzedInstruction]?
//  var name: String?
//  var `step`: [Step]?
  
// MARK: - ExtendedIngredient Properties For CodingKeys - L
  //  var extendedIngredients: [ExtendedIngredient]?
  var aisle: String?
  var consistency: String // replace with Conistency object
  var meta: [String]?
  var nameClean: String?
  var original: String?
  var originalName: String
  
  // MARK: - Unit Properties For CodingKeys - L
//  var unit: Units?
//  var amount: Double?
  var unitShort: String?
  var unitLong: String?

  // MARK: - Step Properties For CodingKeys - L
  var number: Int?
  var `step`: String?
//  var ingredients: [AnalyzedIngredient]?
//  var equipment: [AnalyzedEquipment]?
//  var length: Length?
  
  // MARK: - AnalyzedIngredient Properties For CodingKeys - L
//  var id: Int?
//  var name: String?
  var localizedName: String?
//  var image: String?
  
  // MARK: - AnalyzedEquipment Properties For CodingKeys - L
//    var id: Int?
//    var name: String?
//    var localizedName: String?
//    var image: String?
  
  // MARK: - Length Properties For CodingKeys - L
//  var number: Int?
//  var unit: String?



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





