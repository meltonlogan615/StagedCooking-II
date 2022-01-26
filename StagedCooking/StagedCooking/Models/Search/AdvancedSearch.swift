//
//  AdvancedSearch.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/22/22.
//

import Foundation

struct AdvancedSearch {
  var query: String? //?
  var cuisine: [CuisineTypes] //?
  var excludeCuisine: [CuisineTypes] //?
  var diet: [Diets]? //?
  var intolerances: [Intolerances]? //?
  var equipment: String? //  pan  The equipment required. Multiple values will be interpreted as 'or'. For example, value could be "blender, frying pan, bowl".:
  var includeIngredients: String?  //  tomato,cheese  A comma-separated list of ingredients that should/must be used in the recipes.
  var excludeIngredients: String? //  eggs  A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  var type: [MealTypes]? //  main course  The type of recipe. See a full list of supported meal types.
  var instructionsRequired: Bool? // //  true  Whether the recipes must have instructions.
  var fillIngredients: Bool? // //  false  Add information about the ingredients and whether they are used or missing in relation to the query.
  var addRecipeInformation: Bool? // //  false  If set to true, you get more information about the recipes returned.
  var addRecipeNutrition: Bool? // //  false  If set to true, you get nutritional information about each recipes returned.
  var author: String? //  coffeebean  The username of the recipe author.
  var tags: String? //  myCustomTag  User defined tags that have to match. The author param has to be set.
  var recipeBoxId: Int? //  2468  The id of the recipe box to which the search should be limited to.
  var titleMatch: String? //  Crock Pot  Enter text that must be found in the title of the recipes.
  var maxReadyTime: Int? //  20  The maximum time in minutes it should take to prepare and cook the recipe.
  var ignorePantry: Bool? // //  true  Whether to ignore typical pantry items, such as water, salt, flour, etc.
  var sort: String? //:  calories  The strategy to sort recipes by. See a full list of supported sorting options.
  var sortDirection: String? //  asc  The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
  var minCarbs: Int? //  10  The minimum amount of carbohydrates in grams the recipe must have.
  var maxCarbs: Int? //  100  The maximum amount of carbohydrates in grams the recipe can have.
  var minProtein: Int? //  10  The minimum amount of protein in grams the recipe must have.
  var maxProtein: Int? //  100  The maximum amount of protein in grams the recipe can have.
  var minCalories: Int? //  50  The minimum amount of calories the recipe must have.
  var maxCalories: Int? //  800  The maximum amount of calories the recipe can have.var
  var minFat: Int? //  1  The minimum amount of fat in grams the recipe must have.
  var maxFat: Int? //  100  The maximum amount of fat in grams the recipe can have.
  var minAlcohol: Int? //  0  The minimum amount of alcohol in grams the recipe must have.
  var maxAlcohol: Int? //  100  The maximum amount of alcohol in grams the recipe can have.
  var minCaffeine: Int? //  0  The minimum amount of caffeine in milligrams the recipe must have.
  var maxCaffeine: Int? //  100  The maximum amount of caffeine in milligrams the recipe can have.
  var minCopper: Int? //  0  The minimum amount of copper in milligrams the recipe must have.
  var maxCopper: Int? //  100  The maximum amount of copper in milligrams the recipe can have.
  var minCalcium: Int? //  0  The minimum amount of calcium in milligrams the recipe must have.
  var maxCalcium: Int? //  100  The maximum amount of calcium in milligrams the recipe can have.
  var minCholine: Int? //  0  The minimum amount of choline in milligrams the recipe must have.
  var maxCholine: Int? //  100  The maximum amount of choline in milligrams the recipe can have.
  var minCholesterol: Int? //  0  The minimum amount of cholesterol in milligrams the recipe must have.
  var maxCholesterol: Int? //  100  The maximum amount of cholesterol in milligrams the recipe can have.
  var minFluoride: Int? //  0  The minimum amount of fluoride in milligrams the recipe must have.
  var maxFluoride: Int? //  100  The maximum amount of fluoride in milligrams the recipe can have.
  var minSaturatedFat: Int? //  0  The minimum amount of saturated fat in grams the recipe must have.
  var maxSaturatedFat: Int? //  100  The maximum amount of saturated fat in grams the recipe can have.
  var minVitaminA: Int? //  0  The minimum amount of Vitamin A in IU the recipe must have.
  var maxVitaminA: Int? //  100  The maximum amount of Vitamin A in IU the recipe can have.
  var minVitaminC: Int? //  0  The minimum amount of Vitamin C milligrams the recipe must have.
  var maxVitaminC: Int? //  100  The maximum amount of Vitamin C in milligrams the recipe can have.
  var minVitaminD: Int? //  0  The minimum amount of Vitamin D in micrograms the recipe must have.
  var maxVitaminD: Int? //  100  The maximum amount of Vitamin D in micrograms the recipe can have.
  var minVitaminE: Int? //  0  The minimum amount of Vitamin E in milligrams the recipe must have.
  var maxVitaminE: Int? //  100  The maximum amount of Vitamin E in milligrams the recipe can have.
  var minVitaminK: Int? //  0  The minimum amount of Vitamin K in micrograms the recipe must have.
  var maxVitaminK: Int? //  100  The maximum amount of Vitamin K in micrograms the recipe can have.
  var minVitaminB1: Int? //  0  The minimum amount of Vitamin B1 in milligrams the recipe must have.
  var maxVitaminB1: Int? //  100  The maximum amount of Vitamin B1 in milligrams the recipe can have.
  var minVitaminB2: Int? //  0  The minimum amount of Vitamin B2 in milligrams the recipe must have.
  var maxVitaminB2: Int? //  100  The maximum amount of Vitamin B2 in milligrams the recipe can have.
  var minVitaminB5: Int? //  0  The minimum amount of Vitamin B5 in milligrams the recipe must have.
  var maxVitaminB5: Int? //  100  The maximum amount of Vitamin B5 in milligrams the recipe can have.
  var minVitaminB3: Int? //  0  The minimum amount of Vitamin B3 in milligrams the recipe must have.
  var maxVitaminB3: Int? //  100  The maximum amount of Vitamin B3 in milligrams the recipe can have.
  var minVitaminB6: Int? //  0  The minimum amount of Vitamin B6 in milligrams the recipe must have.
  var maxVitaminB6: Int? //  100  The maximum amount of Vitamin B6 in milligrams the recipe can have.
  var minVitaminB12: Int? //  0  The minimum amount of Vitamin B12 in micrograms the recipe must have.
  var maxVitaminB12: Int? //  100  The maximum amount of Vitamin B12 in micrograms the recipe can have.
  var minFiber: Int? //  0  The minimum amount of fiber in grams the recipe must have.
  var maxFiber: Int? //  100  The maximum amount of fiber in grams the recipe can have.
  var minFolate: Int? //  0  The minimum amount of folate in micrograms the recipe must have.
  var maxFolate: Int? //  100  The maximum amount of folate in micrograms the recipe can have.
  var minFolicAcid: Int? //  0  The minimum amount of folic acid in micrograms the recipe must have.
  var maxFolicAcid: Int? //  100  The maximum amount of folic acid in micrograms the recipe can have.
  var minIodine: Int? //  0  The minimum amount of iodine in micrograms the recipe must have.
  var maxIodine: Int? //  100  The maximum amount of iodine in micrograms the recipe can have.
  var minIron: Int? //  0  The minimum amount of iron in milligrams the recipe must have.
  var maxIron: Int? //  100  The maximum amount of iron in milligrams the recipe can have.
  var minMagnesium: Int? //  0  The minimum amount of magnesium in milligrams the recipe must have.
  var maxMagnesium: Int? //  100  The maximum amount of magnesium in milligrams the recipe can have.
  var minManganese: Int? //  0  The minimum amount of manganese in milligrams the recipe must have.
  var maxManganese: Int? //  100  The maximum amount of manganese in milligrams the recipe can have.
  var minPhosphorus: Int? //  0  The minimum amount of phosphorus in milligrams the recipe must have.
  var maxPhosphorus: Int? //  100  The maximum amount of phosphorus in milligrams the recipe can have.
  var minPotassium: Int? //  0  The minimum amount of potassium in milligrams the recipe must have.
  var maxPotassium: Int? //  100  The maximum amount of potassium in milligrams the recipe can have.
  var minSelenium: Int? //  0  The minimum amount of selenium in micrograms the recipe must have.
  var maxSelenium: Int? //  100  The maximum amount of selenium in micrograms the recipe can have.
  var minSodium: Int? //  0  The minimum amount of sodium in milligrams the recipe must have.
  var maxSodium: Int? //  100  The maximum amount of sodium in milligrams the recipe can have.
  var minSugar: Int? //  0  The minimum amount of sugar in grams the recipe must have.
  var maxSugar: Int? //  100  The maximum amount of sugar in grams the recipe can have.
  var minZinc: Int? //  0  The minimum amount of zinc in milligrams the recipe must have.
  var maxZinc: Int? //  100  The maximum amount of zinc in milligrams the recipe can have.
  var offset: Int? //  0  The number of results to skip (between 0 and 900).
  var number: Int? //  10  The number of expected results (between 1 and 100).
  var limitLicense: Bool? // true  Whether the recipes should have an open license that allows display with proper attribution.
}
