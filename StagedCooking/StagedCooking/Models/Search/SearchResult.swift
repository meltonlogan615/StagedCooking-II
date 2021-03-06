//
//  RecipeTwo.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/28/21.
//

import Foundation

struct Response: Decodable {
  var results: [Recipe]?
  var baseUri: String?
  var number: Int? // total number of items to return from the Response (results.count =< number)
  var offset: Int? // how many reults to move forward (results.count + offset)
  var totalResults: Int? // total number of items in the Response
  var processingTimeMs: Int?
  var expires: Int?
  var isStale: Bool?
}

struct SearchResult: Decodable, Identifiable, Comparable, Hashable {
  var id: Int //716429,
  var title: String // Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs,
  var calories: Int // 584,
  var carbs: String // 84g,
  var fat: String // 20g,
  var image: String // https://spoonacular.com/recipeImages/716429-312x231.jpg,
  var imageType: String // jpg,
  var protein: String // 19g
  
  static func < (lhs: Self, rhs: Self) -> Bool {
    return lhs.title < rhs.title
  }
}

struct BasicSearch: Decodable, Identifiable, Comparable, Hashable {
  var id: Int?
  var title: String?
  var readyInMinutes: Int?
  var image: String? // just image name & extension
  var imageURL: String? // full url
  
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
