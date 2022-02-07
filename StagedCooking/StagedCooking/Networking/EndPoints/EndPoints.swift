//
//  EndPoints.swift
//
//  Created by Logan Melton on 21/10/19.
//

import Foundation
struct EndPoints {
  private let baseURL = "https://api.spoonacular.com/recipes/"
  private var searchType = "complexSearch/"
  private let apiKey = "eeb88c9f7c4747c8837d51ea1c5e8f52"
  private var recipeID = ChefDefault.requestedID
  private var query = ChefDefault.searched
}

// Extension to build URL for Recipe Search
extension EndPoints {
  var endpointURL: URL {
    let completedURL = URL(string: "\(baseURL)\(searchType)?apiKey=\(apiKey)&query=\(query)&number=900&instructionsRequired=true")
    guard let url = completedURL else {
      preconditionFailure("Invalid URL: \(String(describing: completedURL))")
    }
    print(String(describing: url))
    return url
  }
}

// Extension to build URL for Showing Recipe by ID
extension EndPoints {
  var endpointForID: URL {
    let idURL = URL(string: "\(baseURL)\(recipeID)/information?apiKey=\(apiKey)&includeNutrition=false")
    guard let idURL = idURL else {
      preconditionFailure("Invalid URL: \(String(describing: idURL))")
    }
    return idURL
  }
}

extension EndPoints {
  
// Method to build URL for Recipe Search, passing in entered text
  static func getFood(for searched: String) -> EndPoints {
    return EndPoints(query: ChefDefault.searched)
  }
  
// Method to build URL for Showing Recipe by ID, passing in the ID for the selected recipe
  static func getRecipeByID(forID: Int) -> EndPoints {
    return EndPoints(recipeID: ChefDefault.requestedID)
  }
  
  static func getIngredientsByID(forID: Int) -> EndPoints {
    return EndPoints(recipeID: ChefDefault.requestedID)
  }
  
}

// Later, if additional endpoints or API provided functionality added, w will ned to futher extend EndPoints to generate the url & create the static func to recive the data that will be passed back in.
