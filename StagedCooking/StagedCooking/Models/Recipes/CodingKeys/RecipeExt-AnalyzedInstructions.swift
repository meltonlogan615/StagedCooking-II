//
//  RecipeExt-AnalyzedInstructions.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/14/22.
//

import Foundation

extension Recipe {
  enum AnalyzedInstructionsCodingKey: String, CodingKey {
    // CodingKey for String
    case name
  }
}

//struct AnalyzedInstruction: Codable, Hashable {
//  var name: String?
//  var `step`: [Step]?
//}
