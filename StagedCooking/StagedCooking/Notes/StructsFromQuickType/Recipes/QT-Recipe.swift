//
//  QT-Recipe.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

struct QTRecipe: Decodable, Identifiable {
  var id: Int
  var title: String
  var image: String
  var imageType: String
  var servings, readyInMinutes: Int
  var license, sourceName: String
  var sourceURL: String
  var spoonacularSourceURL: String
  var aggregateLikes, healthScore, spoonacularScore: Int
  var pricePerServing: Double
  var analyzedInstructions: [JSONAnyQ]
  var cheap: Bool
  var creditsText: String
  var cuisines: [JSONAnyQ]
  var dairyFree: Bool
  var diets: [JSONAnyQ]
  var gaps: String
  var glutenFree: Bool
  var instructions: String
  var ketogenic, lowFodmap: Bool
  var occasions: [JSONAnyQ]
  var sustainable, vegan, vegetarian, veryHealthy: Bool
  var veryPopular, whole30: Bool
  var weightWatcherSmartPoints: Int
  var dishTypes: [String]
  var extendedIngredients: [QTExtendedIngredient]
  var summary: String
  var winePairing: WinePairing
  
  enum CodingKeys: String, CodingKey {
    case id, title, image, imageType, servings, readyInMinutes, license, sourceName
    case sourceURL = "sourceUrl"
    case spoonacularSourceURL = "spoonacularSourceUrl"
    case aggregateLikes, healthScore, spoonacularScore, pricePerServing, analyzedInstructions, cheap, creditsText, cuisines, dairyFree, diets, gaps, glutenFree, instructions, ketogenic, lowFodmap, occasions, sustainable, vegan, vegetarian, veryHealthy, veryPopular, whole30, weightWatcherSmartPoints, dishTypes, extendedIngredients, summary, winePairing
  }
}
