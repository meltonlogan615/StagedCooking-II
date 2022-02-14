//
//  QT-IngredientInfo.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation
// returned info from https://api.spoonacular.com/food/ingredients/9266/information?amount=1
// MARK: - Welcome
struct QTIngredientInfo: Codable, Identifiable {
  var id: Int
  var original, originalName, name, nameClean: String
  var amount: Int
  var unit, unitShort, unitLong: String
  var possibleUnits: [String]
  var estimatedCost: QTEstimatedCost
  var consistency: String
  var shoppingListUnits: [String]
  var aisle, image: String
  var meta: [JSONAnyQ]
  var nutrition: QTNutrition
  var categoryPath: [String]
}

// MARK: - EstimatedCost
struct QTEstimatedCost: Codable {
  var value: Int
  var unit: String
}












