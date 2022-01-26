//
//  Equipment.swift
//  StagedCooking
//
//  Created by Logan Melton on 12/1/21.
//

import Foundation

struct Equipment: Decodable, Identifiable, Comparable, Hashable {
  var id: Int?
  var name: String?
  var localizedName: String?
  var image: String?
  
  static func < (lhs: Self, rhs: Self) -> Bool {
    var result = false
    if let leftTitle = lhs.name {
      if let rightTitle = rhs.name {
        result = leftTitle < rightTitle
      }
    }
    return result
  }
}
