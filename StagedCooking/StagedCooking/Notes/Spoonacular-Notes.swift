//
//  SpoontacularNotes.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/27/21.
//

import Foundation

/**
 base URL: https://api.spoonacular.com/
 authorization: ?apiKey=YOUR-API-KEY
 apiKey: eeb88c9f7c4747c8837d51ea1c5e8f52
 
  example URL: https://api.spoonacular.com/recipes/complexSearch?apiKey=eeb88c9f7c4747c8837d51ea1c5e8f52
  Example Breakdown:
 https://api.spoonacular.com/
 recipes
 716429
 information
 
 endpoints:
  - recipies
  - food
    - ingredients
    - products
    - menu items
    - wine
    - images
  - mealplanner
 
 Example:
 {
 "offset": 0,
 "number": 2,
 "results": [
 {
  "id": 716429,
  "title": "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
  "calories": 584,
  "carbs": "84g",
 "fat": "20g",
 "image": "https://spoonacular.com/recipeImages/716429-312x231.jpg",
 "imageType": "jpg",
 "protein": "19g"
 },
 {
 "id": 715538,
 "title": "What to make for dinner tonight?? Bruschetta Style Pork & Pasta",
 "calories": 521,
 "carbs": "69g",
 "fat": "10g",
 "image": "https://spoonacular.com/recipeImages/715538-312x231.jpg",
 "imageType": "jpg",
 "protein": "35g"
 }
 ],
 "totalResults": 86
 }
 
 All props
 -Search Params
 query  string  pasta  The (natural language) recipe search query.
 cuisine  string  italian  The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines.
 excludeCuisine  string  greek  The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines.
 diet  string  vegetarian  The diet for which the recipes must be suitable. See a full list of supported diets.
 intolerances  string  gluten  A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
 equipment  string  pan  The equipment required. Multiple values will be interpreted as 'or'. For example, value could be "blender, frying pan, bowl".
 includeIngredients  string  tomato,cheese  A comma-separated list of ingredients that should/must be used in the recipes.
 excludeIngredients  string  eggs  A comma-separated list of ingredients or ingredient types that the recipes must not contain.
 type  string  main course  The type of recipe. See a full list of supported meal types.
 instructionsRequired  boolean  true  Whether the recipes must have instructions.
 fillIngredients  boolean  false  Add information about the ingredients and whether they are used or missing in relation to the query.
 addRecipeInformation  boolean  false  If set to true, you get more information about the recipes returned.
 addRecipeNutrition  boolean  false  If set to true, you get nutritional information about each recipes returned.
 author  string  coffeebean  The username of the recipe author.
 tags  string  myCustomTag  User defined tags that have to match. The author param has to be set.
 recipeBoxId  number  2468  The id of the recipe box to which the search should be limited to.
 titleMatch  string  Crock Pot  Enter text that must be found in the title of the recipes.
 maxReadyTime  number  20  The maximum time in minutes it should take to prepare and cook the recipe.
 ignorePantry  boolean  true  Whether to ignore typical pantry items, such as water, salt, flour, etc.
 sort  string  calories  The strategy to sort recipes by. See a full list of supported sorting options.
 sortDirection  string  asc  The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
 
 includes Nutrition props
 minCarbs  number  10  The minimum amount of carbohydrates in grams the recipe must have.
 maxCarbs  number  100  The maximum amount of carbohydrates in grams the recipe can have.
 minProtein  number  10  The minimum amount of protein in grams the recipe must have.
 maxProtein  number  100  The maximum amount of protein in grams the recipe can have.
 minCalories  number  50  The minimum amount of calories the recipe must have.
 maxCalories  number  800  The maximum amount of calories the recipe can have.
 minFat  number  1  The minimum amount of fat in grams the recipe must have.
 maxFat  number  100  The maximum amount of fat in grams the recipe can have.
 minAlcohol  number  0  The minimum amount of alcohol in grams the recipe must have.
 maxAlcohol  number  100  The maximum amount of alcohol in grams the recipe can have.
 minCaffeine  number  0  The minimum amount of caffeine in milligrams the recipe must have.
 maxCaffeine  number  100  The maximum amount of caffeine in milligrams the recipe can have.
 minCopper  number  0  The minimum amount of copper in milligrams the recipe must have.
 maxCopper  number  100  The maximum amount of copper in milligrams the recipe can have.
 minCalcium  number  0  The minimum amount of calcium in milligrams the recipe must have.
 maxCalcium  number  100  The maximum amount of calcium in milligrams the recipe can have.
 minCholine  number  0  The minimum amount of choline in milligrams the recipe must have.
 maxCholine  number  100  The maximum amount of choline in milligrams the recipe can have.
 minCholesterol  number  0  The minimum amount of cholesterol in milligrams the recipe must have.
 maxCholesterol  number  100  The maximum amount of cholesterol in milligrams the recipe can have.
 minFluoride  number  0  The minimum amount of fluoride in milligrams the recipe must have.
 maxFluoride  number  100  The maximum amount of fluoride in milligrams the recipe can have.
 minSaturatedFat  number  0  The minimum amount of saturated fat in grams the recipe must have.
 maxSaturatedFat  number  100  The maximum amount of saturated fat in grams the recipe can have.
 minVitaminA  number  0  The minimum amount of Vitamin A in IU the recipe must have.
 maxVitaminA  number  100  The maximum amount of Vitamin A in IU the recipe can have.
 minVitaminC  number  0  The minimum amount of Vitamin C milligrams the recipe must have.
 maxVitaminC  number  100  The maximum amount of Vitamin C in milligrams the recipe can have.
 minVitaminD  number  0  The minimum amount of Vitamin D in micrograms the recipe must have.
 maxVitaminD  number  100  The maximum amount of Vitamin D in micrograms the recipe can have.
 minVitaminE  number  0  The minimum amount of Vitamin E in milligrams the recipe must have.
 maxVitaminE  number  100  The maximum amount of Vitamin E in milligrams the recipe can have.
 minVitaminK  number  0  The minimum amount of Vitamin K in micrograms the recipe must have.
 maxVitaminK  number  100  The maximum amount of Vitamin K in micrograms the recipe can have.
 minVitaminB1  number  0  The minimum amount of Vitamin B1 in milligrams the recipe must have.
 maxVitaminB1  number  100  The maximum amount of Vitamin B1 in milligrams the recipe can have.
 minVitaminB2  number  0  The minimum amount of Vitamin B2 in milligrams the recipe must have.
 maxVitaminB2  number  100  The maximum amount of Vitamin B2 in milligrams the recipe can have.
 minVitaminB5  number  0  The minimum amount of Vitamin B5 in milligrams the recipe must have.
 maxVitaminB5  number  100  The maximum amount of Vitamin B5 in milligrams the recipe can have.
 minVitaminB3  number  0  The minimum amount of Vitamin B3 in milligrams the recipe must have.
 maxVitaminB3  number  100  The maximum amount of Vitamin B3 in milligrams the recipe can have.
 minVitaminB6  number  0  The minimum amount of Vitamin B6 in milligrams the recipe must have.
 maxVitaminB6  number  100  The maximum amount of Vitamin B6 in milligrams the recipe can have.
 minVitaminB12  number  0  The minimum amount of Vitamin B12 in micrograms the recipe must have.
 maxVitaminB12  number  100  The maximum amount of Vitamin B12 in micrograms the recipe can have.
 minFiber  number  0  The minimum amount of fiber in grams the recipe must have.
 maxFiber  number  100  The maximum amount of fiber in grams the recipe can have.
 minFolate  number  0  The minimum amount of folate in micrograms the recipe must have.
 maxFolate  number  100  The maximum amount of folate in micrograms the recipe can have.
 minFolicAcid  number  0  The minimum amount of folic acid in micrograms the recipe must have.
 maxFolicAcid  number  100  The maximum amount of folic acid in micrograms the recipe can have.
 minIodine  number  0  The minimum amount of iodine in micrograms the recipe must have.
 maxIodine  number  100  The maximum amount of iodine in micrograms the recipe can have.
 minIron  number  0  The minimum amount of iron in milligrams the recipe must have.
 maxIron  number  100  The maximum amount of iron in milligrams the recipe can have.
 minMagnesium  number  0  The minimum amount of magnesium in milligrams the recipe must have.
 maxMagnesium  number  100  The maximum amount of magnesium in milligrams the recipe can have.
 minManganese  number  0  The minimum amount of manganese in milligrams the recipe must have.
 maxManganese  number  100  The maximum amount of manganese in milligrams the recipe can have.
 minPhosphorus  number  0  The minimum amount of phosphorus in milligrams the recipe must have.
 maxPhosphorus  number  100  The maximum amount of phosphorus in milligrams the recipe can have.
 minPotassium  number  0  The minimum amount of potassium in milligrams the recipe must have.
 maxPotassium  number  100  The maximum amount of potassium in milligrams the recipe can have.
 minSelenium  number  0  The minimum amount of selenium in micrograms the recipe must have.
 maxSelenium  number  100  The maximum amount of selenium in micrograms the recipe can have.
 minSodium  number  0  The minimum amount of sodium in milligrams the recipe must have.
 maxSodium  number  100  The maximum amount of sodium in milligrams the recipe can have.
 minSugar  number  0  The minimum amount of sugar in grams the recipe must have.
 maxSugar  number  100  The maximum amount of sugar in grams the recipe can have.
 minZinc  number  0  The minimum amount of zinc in milligrams the recipe must have.
 maxZinc  number  100  The maximum amount of zinc in milligrams the recipe can have.
 offset  number  0  The number of results to skip (between 0 and 900).
 number  number  10  The number of expected results (between 1 and 100).
 limitLicense  boolean  true  Whether the recipes should have an open license that allows display with proper attribution.

 */
