//
//  File.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/14/22.
//

import Foundation

extension Recipe {
  enum UnitCodingKeys: String, CodingKey {
    // CodingKey for Double?
    case amount
    
    // CodingKey for String?s
    case unitShort, unitLong
  }
}

//struct Units: Codable, Hashable {
//  var metric: MetricUnits?
//  var us: USUnits?
//  
//  struct MetricUnits: Codable, Hashable {
//    var amount: Double?
//    var unit: String?
//    var unitShort: String?
//    var unitLong: String?
//  }
//  
//  struct USUnits: Codable, Hashable {
//    var amount: Double?
//    var unit: String?
//    var unitShort: String?
//    var unitLong: String?
//  }
//  
//}
