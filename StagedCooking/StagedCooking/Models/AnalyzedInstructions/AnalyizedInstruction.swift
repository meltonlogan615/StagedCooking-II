//
//  AnalyizedInstructions.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/6/22.
//

import Foundation

struct AnalyzedInstruction: Codable, Hashable {
  var name: String?
  var `step`: [Step]?
}
