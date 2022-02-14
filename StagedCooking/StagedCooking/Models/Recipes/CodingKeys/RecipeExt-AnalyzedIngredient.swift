//
//  RecipeExt-AnalyzedIngredien.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/14/22.
//

import Foundation

extension Recipe {
  enum AnalyzedIngredientCodingKeys: String, CodingKey {
    case id
    case name, localizedName, image
  }
}
