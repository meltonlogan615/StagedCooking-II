//: [Previous](@previous)

import Foundation

// will be passed in by ParsingString
var directions = [String]()

// will be bassed in by ParseIngredients
var ingredients = [String]()

// placeholder that will be the result of the method below
var stagedRecipe = [String]()

func setStage(descriptions: [String], ingredients: [String]) -> [String] {
  // loop through directions, nested loop through ingredients
  // create new temp Array<String> of ingredients that exist in the directions[index], then append the ingredient itesm, followed by the directions[index] to the stagedRecipe
  // Possible option for building stage:
  // [["1 stick butter", "0.5 cups white sugar"],
  // "mix butter and sugar until thoroughly mixed"]
  
  return stagedRecipe
}

//: [Next](@next)
