//
//  QT-SearchResults.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

// MARK: - Search Recipes
struct QTParams: Decodable {
  let offset: Int
  let number: Int
  let results: [QTResult]
  let totalResults: Int
}

// MARK: - Result
struct QTResult: Codable {
  let id: Int
  let title: String
  let calories: Int
  let carbs, fat: String
  let image: String
  let imageType, protein: String
}
