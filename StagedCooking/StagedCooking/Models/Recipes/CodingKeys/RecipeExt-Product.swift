//
//  RecipeExt-Product.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/14/22.
//

import Foundation

// Is nestin into Recipe.winPairing
enum ProductCodingKeys: String, CodingKey {
  // CodingKeys for Int?s
  case likes, ingredientCount
  case spoonacularScore = "spoontacular_score"
  case numberOfServings = "number_of_servings"
  
  // CodingKeys for String?s
  case price
  case servingSize = "serving_size"
  case generatedText = "generated_text"
  
  // CodingKeys for [String]?
  case badges, breadcrumbs, images
  case importantBadges = "important_badges"
}

//var id: Int?
//var title: String?
//var price: String?
//var likes: Int?
//var badges: [String]?
//var important_badges: [String]?
//var serving_size: String?
//var number_of_servings: Int?
//var spoontacular_score: Int?
//var breadcrumbs: [String]?
//var generated_text: String?
//var ingredientCount: Int?
//var images: [String]?
