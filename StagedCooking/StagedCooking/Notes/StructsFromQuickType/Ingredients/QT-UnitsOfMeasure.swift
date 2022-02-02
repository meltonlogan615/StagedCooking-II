//
//  QT-UnitsOfMeasure.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

enum Measures: String, Codable {
  case metric, us
}

struct Metric: Codable {
  var amount: Double
  var unitLong, unitShort: String
}

struct US: Codable {
  var amount: Double
  var unitLong, unitShort: String
}
