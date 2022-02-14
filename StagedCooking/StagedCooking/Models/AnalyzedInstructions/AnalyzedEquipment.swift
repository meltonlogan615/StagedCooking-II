//
//  Equipment.swift
//  StagedCooking
//
//  Created by Logan Melton on 12/1/21.
//

import Foundation

struct AnalyzedEquipment: Codable, Identifiable, Hashable {
  var id: Int?
  var name: String?
  var localizedName: String?
  var image: String?
}
