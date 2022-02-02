//
//  QT-Product.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/1/22.
//

import Foundation

// MARK: - Welcome
struct QTProduct: Codable {
  var id: Int
  var title: String
  var breadcrumbs: [String]
  var imageType: String
  var badges, importantBadges: [String]
  var ingredientCount: Int
  var generatedText: JSONNull?
  var ingredientList: String
  var ingredients: [ProductIngredient]
  var likes: Int
  var aisle: String
  var nutrition: QTNutrition // only using   var nutrients: [Nutrient] & caloricBreakdown: CaloricBreakdown
  var price: Int
  var servings: Servings
  var spoonacularScore: Int
}

// MARK: - Ingredient
struct ProductIngredient: Codable {
  var ingredientDescription: String?
  var name: String
  var safetyLevel: QTSafetyLevel?
  
  enum CodingKeys: String, CodingKey {
    case ingredientDescription = "description"
    case name
    case safetyLevel = "safety_level"
  }
}

enum QTSafetyLevel: String, Codable {
  case high = "high"
  case low = "low"
  case medium = "medium"
}


// MARK: - CaloricBreakdown
struct CaloricBreakdown: Codable {
  var percentProtein: Double
  var percentFat: Int
  var percentCarbs: Double
}


// MARK: - Servings
struct Servings: Codable {
  var number, size: Int
  var unit: String
}

// MARK: - Encode/decode helpers

class QTJSONNull: Codable, Hashable {
  
  public static func == (lhs: QTJSONNull, rhs: QTJSONNull) -> Bool {
    return true
  }
  
  public var hashValue: Int {
    return 0
  }
  
  public func hash(into hasher: inout Hasher) {
    // No-op
  }
  
  public init() {}
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    if !container.decodeNil() {
      throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
    }
  }
  
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encodeNil()
  }
}
