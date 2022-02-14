//
//  Step.swift
//  StagedCooking
//
//  Created by Logan Melton on 12/1/21.
//

import Foundation

// Updated and matches output from QuickType
struct Step: Codable, Hashable {
  var number: Int?
  var `step`: String?
  var ingredients: [AnalyzedIngredient]?
  var equipment: [AnalyzedEquipment]?
  var length: Length?
}
