//
//  StructsFromQuickType.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let superRecipe = try? newJSONDecoder().decode(SuperRecipe.self, from: jsonData)

import Foundation

// MARK: - SuperRecipe
struct SuperRecipe: Codable {
  var id: Int? //y
  var title: String? //y
  var servings: Int? //y
  var summary: String? //y
  var extendedIngredients: [ExtendedIngredient]? //y
  var instructions: String? //y
  var analyzedInstructions: [AnalyzedInstruction]? //y
  var readyInMinutes: Int? //y
  var image: String? //y
  var imageType: String? //y
  var cuisines: [JSONAny]? //y
  var dishTypes: [String]? //y
  var diets: [String]? //y
  var vegetarian,
      vegan,
      glutenFree,
      dairyFree: Bool? //y
  var veryHealthy,
      cheap,
      veryPopular,
      sustainable: Bool? //y
  var weightWatcherSmartPoints: Int? //y
  var gaps: String? //y
  var lowFodmap: Bool? //y
  var aggregateLikes,
      spoonacularScore,
      healthScore: Int? //y
  var creditsText, license, sourceName: String? //y
  var sourceURL: String? //y
  
  var pricePerServing: Double? //y
  var occasions: [JSONAny]? //y?
  var winePairing: WinePairingQTY? //y
  var originalID: JSONNullQTY? //y
  var spoonacularSourceURL: String? //y
  
//  enum CodingKeys: String, CodingKey {
//    case vegetarian, vegan, glutenFree, dairyFree, veryHealthy, cheap, veryPopular, sustainable, weightWatcherSmartPoints, gaps, lowFodmap, aggregateLikes, spoonacularScore, healthScore, creditsText, license, sourceName, pricePerServing, extendedIngredients, id, title, readyInMinutes, servings
//    case sourceURL = "sourceUrl"
//    case image, imageType, summary, cuisines, dishTypes, diets, occasions, WinePairingQTY, instructions, analyzedInstructions
//    case originalID = "originalId"
//    case spoonacularSourceURL = "spoonacularSourceUrl"
//  }
}

// MARK: - AnalyzedInstruction - DONE
struct AnalyzedInstructionQTY: Codable {
  var name: String?
  var step: [StepQTY]?
}

// MARK: - StepQTY - DONE
struct StepQTY: Codable {
  var number: Int?
  var step: String?
  var ingredients, equipment: [Ent]?
  var length: LengthQTY?
}

// MARK: - Ent - DONE
struct Ent: Codable {
  var id: Int?
  var name, localizedName, image: String?
}

// MARK: - Length - DONE
struct LengthQTY: Codable {
  var number: Int?
  var unit: String?
}

// MARK: - ExtendedIngredient - Done
struct ExtendedIngredientQTY: Codable {
  var id: Int?
  var aisle, image: String?
  var consistency: Consistency?
  var name, nameClean, original, originalName: String?
  var amount: Double?
  var unit: String?
  var meta: [String]?
  var MeasuresQTY: MeasuresQTY?
}

enum Consistency: String, Codable {
  case liquid = "liquid"
  case solid = "solid"
}

// MARK: - MeasuresQTY
struct MeasuresQTY: Codable {
  var us, metric: UnitQTY?
}

// MARK: - Metric
struct UnitQTY: Codable {
  var amount: Double?
  var unitShort, unitLong: String?
}

// MARK: - WinePairingQTY
struct WinePairingQTY: Codable {
  var pairedWines: [String]?
  var pairingText: String?
  var productMatches: [ProductMatch]?
}

// MARK: - ProductMatch
struct ProductMatch: Codable {
  var id: Int?
  var title, productMatchDescription, price: String?
  var imageURL: String?
  var averageRating, ratingCount: Int?
  var score: Double?
  var link: String?
  
  enum CodingKeys: String, CodingKey {
    case id, title
    case productMatchDescription = "description"
    case price
    case imageURL = "imageUrl"
    case averageRating, ratingCount, score, link
  }
}

// MARK: - Encode/decode helpers

class JSONNullQTY: Codable, Hashable {
  
  public static func == (lhs: JSONNullQTY, rhs: JSONNullQTY) -> Bool {
    return true
  }
  
  public var hashValue: Int {
    return 0
  }
  
  public func hash(into hasher: inout Hasher) {
    // No-op
  }
  
  public init() {}
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    if !container.decodeNil() {
      throw DecodingError.typeMismatch(JSONNullQTY.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNullQTY"))
    }
  }
  
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encodeNil()
  }
}

class JSONCodingKeyQTYQTY: CodingKey {
  let key: String
  
  required init?(intValue: Int) {
    return nil
  }
  
  required init?(stringValue: String) {
    key = stringValue
  }
  
  var intValue: Int? {
    return nil
  }
  
  var stringValue: String {
    return key
  }
}

class JSONAny: Codable {
  
  let value: Any
  
  static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
    let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
    return DecodingError.typeMismatch(JSONAny.self, context)
  }
  
  static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
    let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
    return EncodingError.invalidValue(value, context)
  }
  
  static func decode(from container: SingleValueDecodingContainer) throws -> Any {
    if let value = try? container.decode(Bool.self) {
      return value
    }
    if let value = try? container.decode(Int64.self) {
      return value
    }
    if let value = try? container.decode(Double.self) {
      return value
    }
    if let value = try? container.decode(String.self) {
      return value
    }
    if container.decodeNil() {
      return JSONNullQTY()
    }
    throw decodingError(forCodingPath: container.codingPath)
  }
  
  static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
    if let value = try? container.decode(Bool.self) {
      return value
    }
    if let value = try? container.decode(Int64.self) {
      return value
    }
    if let value = try? container.decode(Double.self) {
      return value
    }
    if let value = try? container.decode(String.self) {
      return value
    }
    if let value = try? container.decodeNil() {
      if value {
        return JSONNullQTY()
      }
    }
    if var container = try? container.nestedUnkeyedContainer() {
      return try decodeArray(from: &container)
    }
    if var container = try? container.nestedContainer(keyedBy: JSONCodingKeyQTYQTY.self) {
      return try decodeDictionary(from: &container)
    }
    throw decodingError(forCodingPath: container.codingPath)
  }
  
  static func decode(from container: inout KeyedDecodingContainer<JSONCodingKeyQTYQTY>, forKey key: JSONCodingKeyQTYQTY) throws -> Any {
    if let value = try? container.decode(Bool.self, forKey: key) {
      return value
    }
    if let value = try? container.decode(Int64.self, forKey: key) {
      return value
    }
    if let value = try? container.decode(Double.self, forKey: key) {
      return value
    }
    if let value = try? container.decode(String.self, forKey: key) {
      return value
    }
    if let value = try? container.decodeNil(forKey: key) {
      if value {
        return JSONNullQTY()
      }
    }
    if var container = try? container.nestedUnkeyedContainer(forKey: key) {
      return try decodeArray(from: &container)
    }
    if var container = try? container.nestedContainer(keyedBy: JSONCodingKeyQTYQTY.self, forKey: key) {
      return try decodeDictionary(from: &container)
    }
    throw decodingError(forCodingPath: container.codingPath)
  }
  
  static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
    var arr: [Any] = []
    while !container.isAtEnd {
      let value = try decode(from: &container)
      arr.append(value)
    }
    return arr
  }
  
  static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKeyQTYQTY>) throws -> [String: Any] {
    var dict = [String: Any]()
    for key in container.allKeys {
      let value = try decode(from: &container, forKey: key)
      dict[key.stringValue] = value
    }
    return dict
  }
  
  static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
    for value in array {
      if let value = value as? Bool {
        try container.encode(value)
      } else if let value = value as? Int64 {
        try container.encode(value)
      } else if let value = value as? Double {
        try container.encode(value)
      } else if let value = value as? String {
        try container.encode(value)
      } else if value is JSONNullQTY {
        try container.encodeNil()
      } else if let value = value as? [Any] {
        var container = container.nestedUnkeyedContainer()
        try encode(to: &container, array: value)
      } else if let value = value as? [String: Any] {
        var container = container.nestedContainer(keyedBy: JSONCodingKeyQTYQTY.self)
        try encode(to: &container, dictionary: value)
      } else {
        throw encodingError(forValue: value, codingPath: container.codingPath)
      }
    }
  }
  
  static func encode(to container: inout KeyedEncodingContainer<JSONCodingKeyQTYQTY>, dictionary: [String: Any]) throws {
    for (key, value) in dictionary {
      let key = JSONCodingKeyQTYQTY(stringValue: key)!
      if let value = value as? Bool {
        try container.encode(value, forKey: key)
      } else if let value = value as? Int64 {
        try container.encode(value, forKey: key)
      } else if let value = value as? Double {
        try container.encode(value, forKey: key)
      } else if let value = value as? String {
        try container.encode(value, forKey: key)
      } else if value is JSONNullQTY {
        try container.encodeNil(forKey: key)
      } else if let value = value as? [Any] {
        var container = container.nestedUnkeyedContainer(forKey: key)
        try encode(to: &container, array: value)
      } else if let value = value as? [String: Any] {
        var container = container.nestedContainer(keyedBy: JSONCodingKeyQTYQTY.self, forKey: key)
        try encode(to: &container, dictionary: value)
      } else {
        throw encodingError(forValue: value, codingPath: container.codingPath)
      }
    }
  }
  
  static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
    if let value = value as? Bool {
      try container.encode(value)
    } else if let value = value as? Int64 {
      try container.encode(value)
    } else if let value = value as? Double {
      try container.encode(value)
    } else if let value = value as? String {
      try container.encode(value)
    } else if value is JSONNullQTY {
      try container.encodeNil()
    } else {
      throw encodingError(forValue: value, codingPath: container.codingPath)
    }
  }
  
  public required init(from decoder: Decoder) throws {
    if var arrayContainer = try? decoder.unkeyedContainer() {
      self.value = try JSONAny.decodeArray(from: &arrayContainer)
    } else if var container = try? decoder.container(keyedBy: JSONCodingKeyQTYQTY.self) {
      self.value = try JSONAny.decodeDictionary(from: &container)
    } else {
      let container = try decoder.singleValueContainer()
      self.value = try JSONAny.decode(from: container)
    }
  }
  
  public func encode(to encoder: Encoder) throws {
    if let arr = self.value as? [Any] {
      var container = encoder.unkeyedContainer()
      try JSONAny.encode(to: &container, array: arr)
    } else if let dict = self.value as? [String: Any] {
      var container = encoder.container(keyedBy: JSONCodingKeyQTYQTY.self)
      try JSONAny.encode(to: &container, dictionary: dict)
    } else {
      var container = encoder.singleValueContainer()
      try JSONAny.encode(to: &container, value: self.value)
    }
  }
}
