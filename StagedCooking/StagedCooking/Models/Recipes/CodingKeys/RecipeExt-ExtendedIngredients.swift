//
//  RecipeExt-ExtendedIngredients.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/14/22.
//

import Foundation

enum ExtendedIngredientCodingKeys: String, CodingKey {
  // CodingKey for Int?s
  case id
  // CodingKey for Double?
  case amount
  // CodingKey for String?s
  case name, aisle, image, nameClean, original, originalName
  // CodingKey for [String]?
  case meta
}

//struct ExtendedIngredient: Codable, Hashable, Identifiable {
//  var id: Int?
//  var name: String?
//  var aisle: String?
//  var image: String?
//  var amount: Double?
//  var consistency: String // replace with Conistency object
//  var unit: Units?
//  var meta: [String]?
//
//  var nameClean: String?
//  var original: String?
//  var originalName: String
//}
