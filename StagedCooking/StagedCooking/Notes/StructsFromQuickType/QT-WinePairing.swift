//
//  QT-WinePairing.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

// MARK: - WinePairing
struct QTWinePairing: Codable {
  var pairedWines: [String]
  var pairingText: String
  var productMatches: [QTProductMatch]
}

// MARK: - ProductMatch
struct QTProductMatch: Codable {
  var id: Int
  var title, productMatchDescription, price: String
  var imageURL: String
  var averageRating: Double
  var ratingCount: Int
  var score: Double
  var link: String
  
  enum QTCodingKeys: String, CodingKey {
    case id, title
    case productMatchDescription = "description"
    case price
    case imageURL = "imageUrl"
    case averageRating, ratingCount, score, link
  }
}
