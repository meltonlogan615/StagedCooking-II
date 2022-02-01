//
//  QT-Nutrition.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

// MARK: - Nutrition
struct QTNutrition: Codable {
  var nutrients, properties: [QTNutrient]
  var caloricBreakdown: QTCaloricBreakdown
  var weightPerServing: QTWeightPerServing
}

// MARK: - CaloricBreakdown
struct QTCaloricBreakdown: Codable {
  var percentProtein, percentFat, percentCarbs: Double
}

// MARK: - Nutrient
struct QTNutrient: Codable {
  var name: String
  var amount: Double
  var unit: String
  var percentOfDailyNeeds: Double?
}

// MARK: - WeightPerServing
struct QTWeightPerServing: Codable {
  var amount: Int
  var unit: String
}
