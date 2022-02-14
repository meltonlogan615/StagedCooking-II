//
//  RecipeExt-Step.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/14/22.
//

import Foundation

extension Recipe {
  enum StepCodingKeys: String, CodingKey {
    // CodingKey for Int?
    case number
    
    // CodingKey for String?
    case step
  }
}

//struct Step: Codable, Hashable {
//  var number: Int?
//  var `step`: String?
//  var ingredients: [AnalyzedIngredient]?
//  var equipment: [AnalyzedEquipment]?
//  var length: Length?
//}
