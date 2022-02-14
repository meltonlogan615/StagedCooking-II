//
//  RecipeExt-Nutrition.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/14/22.
//

import Foundation

extension Recipe {
  enum NutritionCodingKeys: String, CodingKey {
    // CodingKeys for String?s
    case title, name, unit
    // CodingKeys for Doubles
    case amount, percentOfDailyNeeds
  }
}

//struct Nutrients: Codable, Comparable, Hashable {
//  var title: String? // example = Calories,
//  var name: String? // example = Calories,
//  var amount: Double? // exmple = 584.46
//  var unit: String? // example = kcal
//  var percentOfDailyNeeds: Double? // example = 29.22
//}

