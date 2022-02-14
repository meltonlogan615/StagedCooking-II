//
//  QT-ExtendedIngredient.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

// Is the DataType passed into a 

struct QTExtendedIngredient: Codable, Identifiable {
  var id: Int?
  var name: String?
  var aisle: String?
  var amount: Double?
  var consitency: Consitency?
  var image: String?
  var measures: Measures?
  var meta: [String]?
  var original, originalName, unit: String?
}

enum Consitency: String, Codable {
  case liquid = "liquid"
  case solid = "solid"
}

