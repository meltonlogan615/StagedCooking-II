//
//  Step.swift
//  StagedCooking
//
//  Created by Logan Melton on 12/1/21.
//

import Foundation


struct Step: Decodable, Comparable, Hashable {
  var number: Int?
  var `step`: String?
  var ingredients: [Ingredient]?
  var equipment: [Equipment]?
  
  static func < (lhs: Self, rhs: Self) -> Bool {
    var result = false
    if let leftTitle = lhs.step {
      if let rightTitle = rhs.step {
        result = leftTitle < rightTitle
      }
    }
    return result
  }
}
