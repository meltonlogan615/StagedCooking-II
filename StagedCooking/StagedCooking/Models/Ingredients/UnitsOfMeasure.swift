//
//  UnitsOfMeasure.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/30/21.
//

import Foundation

struct Units: Codable, Hashable {
  var metric: MetricUnits?
  var us: USUnits?
  
  struct MetricUnits: Codable, Hashable {
    var amount: Double?
    var unit: String?
    var unitShort: String?
    var unitLong: String?
  }
  
  struct USUnits: Codable, Hashable {
    var amount: Double?
    var unit: String?
    var unitShort: String?
    var unitLong: String?
  }
  
}
