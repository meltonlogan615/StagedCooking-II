//
//  RecipeExt-CodingKeys.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/14/22.
//

import Foundation

// MARK: - CodingKeys
extension Recipe {
  enum RecipeCodingKeys: String, CodingKey {
    //CodingKeys for Boool?s
    case vegetarian, vegan, glutenFree, dairyFree, veryHealthy, cheap, veryPopular, sustainable, lowFodmap, ketogenic, whole30
    
    // CodingKeys for Int?s
    case id, servings, preparationMinutes, cookingMinutes, readyInMinutes, weightWatcherSmartPoints, aggregateLikes, spoonacularScore, healthScore, originalId
    
    // CodingKeys for String?s
    case title, summary, instructions, image, gaps, creditsText, sourceName, license
    
    // CodingKets for [Stirng]?s
    case dishTypes, occasions
    
  }
}
