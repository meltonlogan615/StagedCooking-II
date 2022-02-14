//
//  RecipeExt-WinePairing.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/13/22.
//

import Foundation

extension Recipe {
  enum WinePairingCodingKeys: String, CodingKey {
    // CodingKeys for String?s
    case pairedWines, pairingText
  }
}

//struct WinePairing: Decodable, Hashable {
//  var pairingText: String?
//  var pairedWines: [String]?
//  var productMatches: [Product]?
//}
