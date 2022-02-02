//
//  DataProvider.swift
//  ghibli-tableview
//
//  Created by Logan Melton on 21/10/19.
//

import Foundation
import UIKit


class DataProvider  {
  
  private let networkDataFlow = NetworkDataFlow()
  
  func getRecipes<T: Decodable>(for: String, completion: @escaping (Result<T, Error>) -> Void) {
    let recipeEndpoint = EndPoints.getFood(for: MyList.searched)
    networkDataFlow.getData(for: recipeEndpoint.endpointURL) { (result: Result<T, Error>) in
      completion(result)
    }
  }
  
//  func getMoreRecipes<T: Decodable>(for: String, completion: @escaping (Result<T, Error>) -> Void) {
//    let enpoint = EndPoints()
//    let moreRecipes = EndPoints.getMore(newOffset: e, searched: <#T##String#>)
//    networkDataFlow.getData(for: moreRecipes.endpointURL) { (result: Result<T, Error>) in
//      completion(result)
//    }
//  }
  
  func getRecipeByID<T: Decodable>(for: Int, completion: @escaping (Result<T, Error>) -> Void) {
    let recipeByIDEndpoint = EndPoints.getRecipeByID(forID: MyList.requestedID)
    networkDataFlow.getData(for: recipeByIDEndpoint.endpointForID)  { (result: Result<T, Error>) in
      completion(result)
    }
  }
  
  func getIngredientsByID<T: Decodable>(for: Int, completion: @escaping (Result<T, Error>) -> Void) {
    let ingredientByIDEndpoint = EndPoints.getIngredientsByID(forID: MyList.requestedID)
    networkDataFlow.getData(for: ingredientByIDEndpoint.endpointForID) { (result: Result<T, Error>) in
      completion(result)
    }
  }
}

// Later, if additional endpoints or API provided functionality added, will ned to add additional func to recive the data that will be passed back in.
