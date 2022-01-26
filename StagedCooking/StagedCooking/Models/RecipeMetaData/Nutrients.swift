//
//  Nutrients.swift
//  StagedCooking
//
//  Created by Logan Melton on 12/3/21.
//

import Foundation

struct Nutrients: Codable, Comparable, Hashable {
  var title: String? // example = Calories,
  var name: String? // example = Calories,
  var amount: Double? // exmple = 584.46
  var unit: String? // example = kcal
  var percentOfDailyNeeds: Double? // example = 29.22
  
  static func < (lhs: Self, rhs: Self) -> Bool {
    var result = false
    if let leftTitle = lhs.title {
      if let rightTitle = rhs.title {
        result = leftTitle < rightTitle
      }
    }
    return result
  }
}
