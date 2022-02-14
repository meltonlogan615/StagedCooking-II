//
//  MoreHelpers.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/28/21.
//

import Foundation


struct WinePairing: Decodable, Hashable {
  var pairingText: String?
  var pairedWines: [String]?
  var productMatches: [Product]?
}

