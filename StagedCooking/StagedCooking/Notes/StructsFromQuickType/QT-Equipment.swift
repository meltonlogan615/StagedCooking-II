//
//  QT-Equipment.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

// MARK: - Welcome
struct QTRecipeEquipment: Codable {
  var equipment: [QTEquipment]
}

// MARK: - Equipment
struct QTEquipment: Codable {
  var image, name: String
}
