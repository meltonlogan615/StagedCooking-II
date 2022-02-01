//
//  QT-ExtendedIngredient.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

struct QTExtendedIngredient: Codable {
  var aisle: String
  var amount: Double
  var consitency: Consitency
  var id: Int
  var image: String
  var measures: Measures
  var meta: [String]
  var name, original, originalName, unit: String
}

enum Consitency: String, Codable {
  case liquid = "liquid"
  case solid = "solid"
}

