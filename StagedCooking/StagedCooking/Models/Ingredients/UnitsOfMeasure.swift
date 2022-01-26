//
//  UnitsOfMeasure.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/30/21.
//

import Foundation

struct Units: Decodable, Hashable {
  var metric: MetricUnits?
  var us: USUnits?
  
  struct MetricUnits: Decodable, Hashable {
    var value: Double?
    var unit: String?
    var unitShort: String?
    var unitLong: String?
  }
  
  struct USUnits: Decodable, Hashable {
    var value: Double?
    var unit: String?
    var unitShort: String?
    var unitLong: String?
  }
  
}
