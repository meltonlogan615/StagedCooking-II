//
//  Product.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/29/21.
//

import Foundation

struct Product: Decodable, Identifiable, Comparable, Hashable {
  var id: Int?
  var title: String?
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
