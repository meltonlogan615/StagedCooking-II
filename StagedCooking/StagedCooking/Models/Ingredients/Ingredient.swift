//
//  Spoon-Ingredient.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/29/21.
//

import Foundation

struct Ingredient: Decodable, Identifiable, Comparable, Hashable {
  var id: Int?
//  var aisle: String?
//  var image: String?
  var name: String?
//  var amount: [Units]?
//  var originalString: String?
//  var metaInformation: [String]?
  
  static func < (lhs: Self, rhs: Self) -> Bool {
    var result = false
    if let leftTitle = lhs.name {
      if let rightTitle = rhs.name {
        result = leftTitle < rightTitle
      }
    }
    return result
  }
}

struct IngredientResults: Decodable, Hashable {
  var ingredients: [Ingredient]?
}
