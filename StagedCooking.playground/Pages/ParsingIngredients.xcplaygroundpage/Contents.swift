//: [Previous](@previous)

import Foundation

// ideally, would receive the ingredient list back as either an Array<String> or Dictionary<String: String>

struct Ingredient {
  var unit: String
  var amount: Double
  var name: String
}

let butter = Ingredient(unit: "Stick", amount: 1.0, name: "butter")
let sugar = Ingredient(unit: "Cup", amount: 0.5, name: "white sugar")
let brownSugar = Ingredient(unit: "Cup", amount: 0.5, name: "brown sugar")
let eggs = Ingredient(unit: "Each", amount: 1, name: "eggs")
let vanilla = Ingredient(unit: "Tablespoon", amount: 1.0, name: "vanilla")
let bakingSoda = Ingredient(unit: "Teaspoon", amount: 0.5, name: "baking soda")
let salt = Ingredient(unit: "Teaspoon", amount: 0.25, name: "salt")
let hotWAter = Ingredient(unit: "Teaspoon", amount: 1.0, name: "hot water")
let chocolateChips = Ingredient(unit: "Grams", amount: 70.0, name: "chocolate chips")
let flour = Ingredient(unit: "Cup", amount: 1.5, name: "flour")

let ingredients = [butter, sugar, brownSugar, eggs, vanilla, bakingSoda, salt, hotWAter, chocolateChips, flour]
let directions = ["Cream together the butter, white sugar, and brown sugar until smooth.", "Beat in the eggs one at a time, then stir in the vanilla.", "Dissolve baking soda in hot water, add to batter along with salt.", "Stir in flour, chocolate chips, and nuts.", "Drop by large spoonfuls onto ungreased pans.", "Bake @ 350 degrees for 10mins."]

var stagedRecipe = [String]()

func createOrder(ingredients: [Ingredient], directions: [String]) -> [String] {
  for step in directions {
    for item in ingredients {
      if step.contains(item.name) {
        stagedRecipe.append("\(item.amount) \(item.unit) - \(item.name)")
      } 
    }
    stagedRecipe.append(step)
  }
  
  return stagedRecipe
}

let recipe = createOrder(ingredients: ingredients, directions: directions)
for i in recipe {
  if i.last == "." {
    print(i)
    print("\n")
  } else {
    
    print(i)
  }
}
 


//: [Next](@next)
