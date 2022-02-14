//
//  Analyzed.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/8/22.
//

import Foundation

struct Analyzed: Codable, Hashable {
  var name: String?
  var step: [Step]
}
